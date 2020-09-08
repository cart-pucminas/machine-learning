#include <cstdlib>
#include <iostream>
#include <vector>
#include <pthread.h>
#include "tiny_dnn/tiny_dnn.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <cstring>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;
using namespace std;

#define STRING_BUFFER_LEN 1024

  /* Host2FPGA memory buffers */
  cl_mem nn_buffer, optimizer_buffer, train_images_buffer, train_labels_buffer, on_enumerate_minibatch_buffer, on_enumerate_epoch_buffer;

#pragma region OpenCL Variables 

// Runtime constants
// Used to define the work set over which this kernel will execute.
static const size_t work_group_size = 8;  // 8 threads in the demo workgroup
// Defines kernel argument value, which is the workitem ID that will
// execute a printf call
static const int thread_id_to_output = 2;

// OpenCL runtime configuration
static cl_platform_id platform = NULL;
static cl_device_id device = NULL;
static cl_context context = NULL;
static cl_command_queue queueCL = NULL;
static cl_kernel kernel = NULL;
static cl_program program = NULL;

// Function prototypes
bool init();
void cleanup();
static void device_info_ulong( cl_device_id device, cl_device_info param, const char* name);
static void device_info_uint( cl_device_id device, cl_device_info param, const char* name);
static void device_info_bool( cl_device_id device, cl_device_info param, const char* name);
static void device_info_string( cl_device_id device, cl_device_info param, const char* name);
static void display_device_info( cl_device_id device );

#pragma endregion

#pragma region OpenCL Helper Functions

bool init() {
  cl_int status;

  if(!setCwdToExeDir()) {
    return false;
  }
  
  cl_uint num_platforms;
  status = clGetPlatformIDs(1, &platform, &num_platforms);
  
  // User-visible output - Platform information
  {
    char char_buffer[STRING_BUFFER_LEN]; 
    printf("Querying platform for info:\n");
    printf("==========================\n");
    clGetPlatformInfo(platform, CL_PLATFORM_NAME, STRING_BUFFER_LEN, char_buffer, NULL);
    printf("%-40s = %s\n", "CL_PLATFORM_NAME", char_buffer);
    clGetPlatformInfo(platform, CL_PLATFORM_VENDOR, STRING_BUFFER_LEN, char_buffer, NULL);
    printf("%-40s = %s\n", "CL_PLATFORM_VENDOR ", char_buffer);
    clGetPlatformInfo(platform, CL_PLATFORM_VERSION, STRING_BUFFER_LEN, char_buffer, NULL);
    printf("%-40s = %s\n\n", "CL_PLATFORM_VERSION ", char_buffer);
  }

  // Query the available OpenCL devices.
  scoped_array<cl_device_id> devices;
  cl_uint num_devices;
  
  
  devices.reset(getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices));

  // We'll just use the first device.
  device = devices[0];

  // Display some device information.
  display_device_info(device);

  // Create the context.
  context = clCreateContext(NULL, 1, &device, &oclContextCallback, NULL, &status);
  checkError(status, "Failed to create context");

  // Create the command queue.
  queueCL = clCreateCommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &status);
  checkError(status, "Failed to create command queue");

  // Create the program.
  std::string binary_file = getBoardBinaryFile("cnn_train", device);
  printf("Using AOCX: %s\n", binary_file.c_str());
  program = createProgramFromBinary(context, binary_file.c_str(), &device, 1);

  // Build the program that was just created.
  status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  checkError(status, "Failed to build program");

  // Create the kernel - name passed in here must match kernel name in the
  // original CL file, that was compiled into an AOCX file using the AOC tool
  const char *kernel_name = "cnn_train";  // Kernel name, as defined in the CL file
  kernel = clCreateKernel(program, kernel_name, &status);
  checkError(status, "Failed to create kernel");

  return true;
}

// Free the resources allocated during initialization
void cleanup() {
  if(kernel) {
    clReleaseKernel(kernel);  
  }
  if(program) {
    clReleaseProgram(program);
  }
  if(queueCL) {
    clReleaseCommandQueue(queueCL);
  }
  if(context) {
    clReleaseContext(context);
  }
}

// Helper functions to display parameters returned by OpenCL queries
static void device_info_ulong( cl_device_id device, cl_device_info param, const char* name) {
   cl_ulong a;
   clGetDeviceInfo(device, param, sizeof(cl_ulong), &a, NULL);
   printf("%-40s = %lu\n", name, a);
}
static void device_info_uint( cl_device_id device, cl_device_info param, const char* name) {
   cl_uint a;
   clGetDeviceInfo(device, param, sizeof(cl_uint), &a, NULL);
   printf("%-40s = %u\n", name, a);
}
static void device_info_bool( cl_device_id device, cl_device_info param, const char* name) {
   cl_bool a;
   clGetDeviceInfo(device, param, sizeof(cl_bool), &a, NULL);
   printf("%-40s = %s\n", name, (a?"true":"false"));
}
static void device_info_string( cl_device_id device, cl_device_info param, const char* name) {
   char a[STRING_BUFFER_LEN]; 
   clGetDeviceInfo(device, param, STRING_BUFFER_LEN, &a, NULL);
   printf("%-40s = %s\n", name, a);
}

// Query and display OpenCL information on device and runtime environment
static void display_device_info( cl_device_id device ) {

   printf("Querying device for info:\n");
   printf("========================\n");
   device_info_string(device, CL_DEVICE_NAME, "CL_DEVICE_NAME");
   device_info_string(device, CL_DEVICE_VENDOR, "CL_DEVICE_VENDOR");
   device_info_uint(device, CL_DEVICE_VENDOR_ID, "CL_DEVICE_VENDOR_ID");
   device_info_string(device, CL_DEVICE_VERSION, "CL_DEVICE_VERSION");
   device_info_string(device, CL_DRIVER_VERSION, "CL_DRIVER_VERSION");
   device_info_uint(device, CL_DEVICE_ADDRESS_BITS, "CL_DEVICE_ADDRESS_BITS");
   device_info_bool(device, CL_DEVICE_AVAILABLE, "CL_DEVICE_AVAILABLE");
   device_info_bool(device, CL_DEVICE_ENDIAN_LITTLE, "CL_DEVICE_ENDIAN_LITTLE");
   device_info_ulong(device, CL_DEVICE_GLOBAL_MEM_CACHE_SIZE, "CL_DEVICE_GLOBAL_MEM_CACHE_SIZE");
   device_info_ulong(device, CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE, "CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE");
   device_info_ulong(device, CL_DEVICE_GLOBAL_MEM_SIZE, "CL_DEVICE_GLOBAL_MEM_SIZE");
   device_info_bool(device, CL_DEVICE_IMAGE_SUPPORT, "CL_DEVICE_IMAGE_SUPPORT");
   device_info_ulong(device, CL_DEVICE_LOCAL_MEM_SIZE, "CL_DEVICE_LOCAL_MEM_SIZE");
   device_info_ulong(device, CL_DEVICE_MAX_CLOCK_FREQUENCY, "CL_DEVICE_MAX_CLOCK_FREQUENCY");
   device_info_ulong(device, CL_DEVICE_MAX_COMPUTE_UNITS, "CL_DEVICE_MAX_COMPUTE_UNITS");
   device_info_ulong(device, CL_DEVICE_MAX_CONSTANT_ARGS, "CL_DEVICE_MAX_CONSTANT_ARGS");
   device_info_ulong(device, CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE, "CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE");
   device_info_uint(device, CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS, "CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS");
   device_info_uint(device, CL_DEVICE_MEM_BASE_ADDR_ALIGN, "CL_DEVICE_MEM_BASE_ADDR_ALIGN");
   device_info_uint(device, CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE, "CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT");
   device_info_uint(device, CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE, "CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE");

   {
      cl_command_queue_properties ccp;
      clGetDeviceInfo(device, CL_DEVICE_QUEUE_PROPERTIES, sizeof(cl_command_queue_properties), &ccp, NULL);
      printf("%-40s = %s\n", "Command queue out of order? ", ((ccp & CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE)?"true":"false"));
      printf("%-40s = %s\n", "Command queue profiling enabled? ", ((ccp & CL_QUEUE_PROFILING_ENABLE)?"true":"false"));
   }
}

#pragma endregion

#pragma region File Methods

/// Realiza a gravacao do arquivo contendo os dados
void writeFile (const char *nomeArquivo, std::string &texto)
{
    FILE *arq;
    int result =0;    

    arq = fopen(nomeArquivo, "a");  // Cria um arquivo texto para gravação
    if (arq == NULL) // Se não conseguiu criar
    {
       printf("Problemas na CRIACAO do arquivo %s\n", nomeArquivo);
       return;
    }

    result = fputs(texto.c_str(), arq);
    if (result == EOF)
        printf("Erro na Gravacao\n");
    fclose(arq);
}

#pragma endregion

#pragma region Rede Neural

template <typename N>
void construct_net(N &nn, tiny_dnn::core::backend_t backend_type) {
  using conv    = tiny_dnn::convolutional_layer;
  using pool    = tiny_dnn::max_pooling_layer;
  using fc      = tiny_dnn::fully_connected_layer;
  using relu    = tiny_dnn::relu_layer;
  using softmax = tiny_dnn::softmax_layer;

  const size_t n_fmaps  = 11;  // number of feature maps for upper layer
  const size_t n_fmaps2 = 22;  // number of feature maps for lower layer
  const size_t n_fc     = 22;  // number of hidden units in fc layer

  nn << conv(11, 11, 3, 1, n_fmaps, tiny_dnn::padding::same,
             true, 1, 1, 1, 1, backend_type)                      // C11
     << pool(11, 11, n_fmaps, 2, false, backend_type)             // P4
     << relu()                                                    // activation
     << conv(5, 5, 2, n_fmaps, n_fmaps, tiny_dnn::padding::same,
             true, 1, 1, 1, 1, backend_type)                      // C5
     << pool(5, 5, n_fmaps, 2, false, backend_type)               // P3
     << relu()                                                    // activation
     << conv(2, 2, 1, n_fmaps, n_fmaps2, tiny_dnn::padding::same,
             true, 1, 1, 1, 1, backend_type)                      // C2
     << pool(2, 2, n_fmaps2, 2, false, backend_type)              // P4
     << relu()                                                    // activation
     << fc(22, n_fc, true, backend_type)                          // FC22
     << relu()                                                    // activation
     << fc(n_fc, 6, true, backend_type) << softmax(6);            // FC6
}

#pragma endregion

#pragma region TrainCNN

//   template <typename OnBatchEnumerate,
//             typename OnEpochEnumerate>
// void trainOpenCL(tiny_dnn::network<tiny_dnn::sequential> nn, 
//                  tiny_dnn::adam optimizer,                  
//                  std::vector<tiny_dnn::vec_t> train_images, 
//                 std::vector<tiny_dnn::label_t> train_labels,
//                 const int n_minibatch,                     
//                 const int n_train_epochs,                  
//                 OnBatchEnumerate on_enumerate_minibatch,   
//                 OnEpochEnumerate on_enumerate_epoch       
// )
// {

// cl_int status;
//   std::cout << "Train OpenCL" << std::endl;


// //Create Memory buffers
// nn_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
// 					sizeof(tiny_dnn::network<tiny_dnn::sequential>), nn, &status);
// 	optimizer_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(tiny_dnn::adam), optimizer, &status);
// 	train_images_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(std::vector<tiny_dnn::vec_t>), train_images, &status);
//   train_labels_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(std::vector<tiny_dnn::vec_t>), train_labels, &status);
// 	on_enumerate_minibatch_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(OnBatchEnumerate), on_enumerate_minibatch, &status);
// 	on_enumerate_epoch_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(OnEpochEnumerate), on_enumerate_epoch, &status);
// 	checkError(status, "Failed to create buffers");	
  
// //Write buffers

//   status  = clEnqueueWriteBuffer(queueCL, nn_buffer, CL_FALSE,
//         	0, sizeof(tiny_dnn::network<tiny_dnn::sequential>), nn, 0, NULL, NULL);
// 	status  = clEnqueueWriteBuffer(queueCL, optimizer_buffer, CL_FALSE,
//         	0, sizeof(tiny_dnn::adam), optimizer, 0, NULL, NULL);
//   status  = clEnqueueWriteBuffer(queueCL, train_images_buffer, CL_FALSE,
//         	0, sizeof(std::vector<tiny_dnn::vec_t>), train_images, 0, NULL, NULL);
//   status  = clEnqueueWriteBuffer(queueCL, train_labels_buffer, CL_FALSE,
//         	0, sizeof(std::vector<tiny_dnn::vec_t>), train_labels, nn, 0, NULL, NULL);
//   status  = clEnqueueWriteBuffer(queueCL, on_enumerate_minibatch_buffer, CL_FALSE,
//         	0, sizeof(OnBatchEnumerate), on_enumerate_minibatch, 0, NULL, NULL);
//   status  = clEnqueueWriteBuffer(queueCL, on_enumerate_epoch_buffer, CL_FALSE,
//         	0, sizeof(OnEpochEnumerate), on_enumerate_epoch, 0, NULL, NULL);
    
// 	checkError(status, "Failed to write buffers");

// //Set arguments
//   status = clSetKernelArg(kernel, 0,  sizeof(cl_mem), &nn_buffer);
//   status = clSetKernelArg(kernel, 1,  sizeof(cl_mem), &optimizer_buffer);
//   status = clSetKernelArg(kernel, 2,  sizeof(cl_mem), &train_images_buffer);
//   status = clSetKernelArg(kernel, 3,  sizeof(cl_mem), &train_labels_buffer);
//   status = clSetKernelArg(kernel, 4,  sizeof(int), &n_minibatch);
//   status = clSetKernelArg(kernel, 5,  sizeof(int), &n_train_epochs);
//   status = clSetKernelArg(kernel, 6,  sizeof(cl_mem), &on_enumerate_minibatch_buffer);
//   status = clSetKernelArg(kernel, 7,  sizeof(cl_mem), &on_enumerate_epoch_buffer);
//   status |= clFinish(queueCL);
// 	checkError(status, "Failed to set arguments");

//   // Configure work set over which the kernel will execute
//   size_t wgSize[3] = {work_group_size, 1, 1};
//   size_t gSize[3] = {work_group_size, 1, 1};

//   // Launch the kernel
//   status = clEnqueueNDRangeKernel(queueCL, kernel, 1, NULL, gSize, wgSize, 0, NULL, NULL);
//   checkError(status, "Failed to launch kernel");

//   // Read Buffer
//    status  = clEnqueueReadBuffer(queueCL, nn_buffer, CL_TRUE,
//         	0, sizeof(tiny_dnn::network<tiny_dnn::sequential>), nn, 0, NULL, NULL);
// 	status  = clEnqueueReadBuffer(queueCL, optimizer_buffer, CL_TRUE,
//         	0, sizeof(tiny_dnn::adam), optimizer, 0, NULL, NULL);
//   status  = clEnqueueReadBuffer(queueCL, train_images_buffer, CL_TRUE,
//         	0, sizeof(std::vector<tiny_dnn::vec_t>), train_images, 0, NULL, NULL);
//   status  = clEnqueueReadBuffer(queueCL, train_labels_buffer, CL_TRUE,
//         	0, sizeof(std::vector<tiny_dnn::vec_t>), train_labels, nn, 0, NULL, NULL);
//   status  = clEnqueueReadBuffer(queueCL, on_enumerate_minibatch_buffer, CL_TRUE,
//         	0, sizeof(OnBatchEnumerate), on_enumerate_minibatch, 0, NULL, NULL);
//   status  = clEnqueueReadBuffer(queueCL, on_enumerate_epoch_buffer, CL_TRUE,
//         	0, sizeof(OnEpochEnumerate), on_enumerate_epoch, 0, NULL, NULL);
// 	checkError(status, "Failed to read buffers");

//   // Wait for command queue to complete pending events
//   status = clFinish(queueCL);
//   checkError(status, "Failed to finish");

//   printf("\nKernel execution is complete.\n");

//   // Free the resources allocated
//   cleanup();

// }

void train_nslkdd(std::string data_dir_path,
                   double learning_rate,
                   const int n_train_epochs,
                   const int n_minibatch,
                   tiny_dnn::core::backend_t backend_type,
                   std::ostream &log) {
  // specify loss-function and learning strategy
  tiny_dnn::network<tiny_dnn::sequential> nn;
  tiny_dnn::adam optimizer;

  construct_net(nn, backend_type);

  std::cout << "lucas load models..." << std::endl;

  // load cifar dataset
  std::vector<tiny_dnn::label_t> train_labels, test_labels;
  std::vector<tiny_dnn::vec_t> train_images, test_images;

  parse_nslkdd(data_dir_path + "/TrainCnn50000.csv",
                  &train_images, &train_labels, 0, 0, 0);

  parse_nslkdd(data_dir_path + "/Validation50000.csv", 
                  &test_images, &test_labels, 0, 0, 0);

  std::cout << "start learning" << std::endl;

  tiny_dnn::progress_display disp(train_images.size());
  tiny_dnn::timer t;

  optimizer.alpha *=
    static_cast<tiny_dnn::float_t>(sqrt(n_minibatch) * learning_rate);

  int epoch = 1;
  remove("results.csv");
  // create callback
  auto on_enumerate_epoch = [&]() {
    float epochTime = t.elapsed();
    std:string linha;

    std::cout << "Epoch " << epoch << "/" << n_train_epochs << " finished. "
              << epochTime << "s elapsed." << std::endl;
  
    tiny_dnn::result res = nn.test(test_images, test_labels);
    log << res.num_success << "/" << res.num_total << std::endl;
    
    linha =  std::to_string(epoch) + "," +  std::to_string(epochTime) + "," +  std::to_string(res.num_success) + "/" +  std::to_string(res.num_total) + "\n";  
    writeFile("results.csv", linha);
    
    ++epoch;
    disp.restart(train_images.size());
    t.restart();
  };

  auto on_enumerate_minibatch = [&]() { disp += n_minibatch; };

  // training
  nn.train<tiny_dnn::cross_entropy>(optimizer, train_images, train_labels,
                                    n_minibatch, n_train_epochs,
                                    on_enumerate_minibatch, on_enumerate_epoch);
  
  // trainOpenCL(nn, optimizer, train_images, train_labels,
  //             n_minibatch, n_train_epochs,
  //             on_enumerate_minibatch, on_enumerate_epoch);

  std::cout << "end training." << std::endl;

  // test and show results
  nn.test(test_images, test_labels).print_detail(std::cout);
  // save networks
  std::ofstream ofs("cnn-weights");
  ofs << nn;
}

#pragma endregion

#pragma region Static Methods

static tiny_dnn::core::backend_t parse_backend_name(const std::string &name) {
  const std::array<const std::string, 5> names = {{
    "internal", "nnpack", "libdnn", "avx", "opencl",
  }};
  for (size_t i = 0; i < names.size(); ++i) {
    if (name.compare(names[i]) == 0) {
      return static_cast<tiny_dnn::core::backend_t>(i);
    }
  }
  return tiny_dnn::core::default_engine();
}

static void usage(const char *argv0) {
  std::cout << "Usage: " << argv0 << " --data_path path_to_dataset_folder"
            << " --learning_rate 1"
            << " --epochs 30"
            << " --minibatch_size 16"
            << " --backend_type internal" << std::endl;
}

#pragma endregion

#pragma region Main Method

int main(int argc, char **argv) {
  std::cerr << "Inicio" << std::endl;
  double learning_rate                   = 1;
  int epochs                             = 30;
  std::string data_path                  = "";
  int minibatch_size                     = 16;
  tiny_dnn::core::backend_t backend_type = tiny_dnn::core::default_engine();
  cl_int status;
  if (argc == 2) {
    std::string argname(argv[1]);
    if (argname == "--help" || argname == "-h") {
      usage(argv[0]);
      return 0;
    }
  }
  for (int count = 1; count + 1 < argc; count += 2) {
    std::string argname(argv[count]);
    if (argname == "--learning_rate") {
      learning_rate = atof(argv[count + 1]);
    } else if (argname == "--epochs") {
      epochs = atoi(argv[count + 1]);
    } else if (argname == "--minibatch_size") {
      minibatch_size = atoi(argv[count + 1]);
    } else if (argname == "--backend_type") {
      backend_type = parse_backend_name(argv[count + 1]);
    } else if (argname == "--data_path") {
      data_path = std::string(argv[count + 1]);
    } else {
      std::cerr << "Invalid parameter specified - \"" << argname << "\""
                << std::endl;
      usage(argv[0]);
      return -1;
    }
  }
  if (data_path == "") {
    std::cerr << "Data path not specified." << std::endl;
    usage(argv[0]);
    return -1;
  }
  if (learning_rate <= 0) {
    std::cerr
      << "Invalid learning rate. The learning rate must be greater than 0."
      << std::endl;
    return -1;
  }
  if (epochs <= 0) {
    std::cerr << "Invalid number of epochs. The number of epochs must be "
                 "greater than 0."
              << std::endl;
    return -1;
  }
  if (minibatch_size <= 0 || minibatch_size > 60000) {
    std::cerr
      << "Invalid minibatch size. The minibatch size must be greater than 0"
         " and less than dataset size (60000)."
      << std::endl;
    return -1;
  }
  

 std::cout << "Running with the following parameters:" << std::endl
            << "Data path: " << data_path << std::endl
            << "Learning rate: " << learning_rate << std::endl
            << "Minibatch size: " << minibatch_size << std::endl
            << "Number of epochs: " << epochs << std::endl
            << "Backend type: " << backend_type << std::endl
            << std::endl;

  try {
    //Init OpenCL config
    //if(!init()) {
    //  return -1;
    //    }
    
    //printf("\nKernel initialization is complete.\n");

    train_nslkdd(data_path, learning_rate, epochs, minibatch_size,
                  backend_type, std::cout);
  } catch (tiny_dnn::nn_error &err) {
    std::cerr << "Exception: " << err.what() << std::endl;
  }      
 
// Set the kernel argument (argument 0)
//  status = clSetKernelArg(kernel, 0, sizeof(cl_int), (void*)&thread_id_to_output);
//  checkError(status, "Failed to set kernel arg 0");

  //printf("\nKernel initialization is complete.\n");
 // printf("Launching the kernel...\n\n");




  return 0;
}

#pragma endregion
