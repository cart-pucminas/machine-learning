/*
    Copyright (c) 2013, Taiga Nomi and the respective contributors
    All rights reserved.

    Use of this source code is governed by a BSD-style license that can be found
    in the LICENSE file.
*/
#pragma once
#include <iostream>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;

#define STRING_BUFFER_LEN 1024

namespace tiny_dnn {
namespace kernels {

/* Host2FPGA memory buffers */
cl_mem pinBuffer, pwBuffer, poutBuffer, pin_lineBuffer, pin_elementBuffer, pw_elementBuffer;

float_t *pw;
float_t *pin;
float_t *pout;
float_t *pin_line;
float_t *pin_element;
float_t *pw_element;

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

#pragma endregion

#pragma region OpenCL Helper Functions

bool init() {  
  cl_int status;

  if(!setCwdToExeDir()) {
    return false;
  }
  
  cl_uint num_platforms;
  status = clGetPlatformIDs(1, &platform, &num_platforms);
 
  // Query the available OpenCL devices.
  scoped_array<cl_device_id> devices;
  cl_uint num_devices;
    
  devices.reset(getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices));

  // We'll just use the first device.
  device = devices[0];

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

#pragma endregion

void createMemoryBuffers(void) {
  cl_int status;

	pinBuffer = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
					sizeof(float) * 8, pin, &status);
	pwBuffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
					sizeof(float) *8, pw, &status);
	poutBuffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
					sizeof(float) * 8, pout, &status);
  pin_lineBuffer = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
					sizeof(float) * 8, pin_line, &status);
	pw_elementBuffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
					sizeof(float) *8, pw_element, &status);
	pin_elementBuffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
					sizeof(float) * 8, pin_element, &status);
	checkError(status, "Failed to create buffers");	
}

void writeBuffers(void) {
  cl_int status;

	status  = clEnqueueWriteBuffer(queueCL, pinBuffer, CL_FALSE,
        	0, sizeof(float) * 8, pin, 0, NULL, NULL);
	status |= clEnqueueWriteBuffer(queueCL, pwBuffer, CL_FALSE,
    		0, sizeof(int) * 8, pw, 0, NULL, NULL);
	status |= clEnqueueWriteBuffer(queueCL, poutBuffer, CL_FALSE,
    		0, sizeof(int) * 8, pout, 0, NULL, NULL);
  status  = clEnqueueWriteBuffer(queueCL, pin_lineBuffer, CL_FALSE,
        	0, sizeof(float) * 8, pin_line, 0, NULL, NULL);
	status |= clEnqueueWriteBuffer(queueCL, pw_elementBuffer, CL_FALSE,
    		0, sizeof(int) * 8, pw_element, 0, NULL, NULL);
	status |= clEnqueueWriteBuffer(queueCL, pin_elementBuffer, CL_FALSE,
    		0, sizeof(int) * 8, pin_element, 0, NULL, NULL);
	checkError(status, "Failed to write buffers");
}

void readBuffers(void) {
  cl_int status;

	status  = clEnqueueReadBuffer(queueCL, pinBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pin , 0, NULL, NULL);
	status |= clEnqueueReadBuffer(queueCL, pwBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pw , 0, NULL, NULL);
	status |= clEnqueueReadBuffer(queueCL, poutBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pout, 0, NULL, NULL);
  status  = clEnqueueReadBuffer(queueCL, pin_lineBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pin_line , 0, NULL, NULL);
	status |= clEnqueueReadBuffer(queueCL, pw_elementBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pw_element , 0, NULL, NULL);
	status |= clEnqueueReadBuffer(queueCL, pin_elementBuffer, CL_TRUE,
			0, sizeof(float) * 8 , pin_element, 0, NULL, NULL);
	checkError(status, "Failed to read buffers");
}

//-------------------------------------------------------------

inline void conv2d_op_opencl(const tensor_t &in_data,
                               const vec_t &W,
                               const vec_t &bias,
                               tensor_t &out_data,
                               const core::conv_params &params,
                               const bool parallelize) {
   //Init OpenCL config
  if(!init()) {
      printf("\nKernel error.\n");
  }
    
  printf("\nKernel initialization is complete.\n");

  createMemoryBuffers();
  for_(parallelize, 0u, in_data.size(),
       [&](const blocked_range &r) {
         size_t out_area    = params.out.area();
         size_t iw          = params.in_padded.width_;
         size_t id          = params.in.depth_;
         size_t ow          = params.out.width_;
         size_t oh          = params.out.height_;
         size_t od          = params.out.depth_;
         size_t kw          = params.weight.width_;
         size_t kh          = params.weight.height_;
         size_t w_dilation  = params.w_dilation;
         size_t h_dilation  = params.h_dilation;
         size_t elem_stride = params.w_stride;
         size_t line_stride = iw * params.h_stride;
         for (size_t sample = r.begin(); sample < r.end(); sample++) {
           const vec_t &in = in_data[sample];
           vec_t &a        = out_data[sample];
           for (size_t o = 0; o < od; o++) {
             float_t *pa = &a[params.out.get_index(0, 0, o)];
             for (size_t inc = 0; inc < id; inc++) {
               if (!params.tbl.is_connected(o, inc)) continue;
               size_t idx;
               idx                = params.weight.get_index(0, 0, id * o + inc);
               const float_t* pw0  = &W[idx];
               pw = const_cast<float*>(pw);
               idx                = params.in_padded.get_index(0, 0, inc);
               const float_t* pin0 = &in[idx];
               pin = const_cast<float*>(pin0);
               pout      = pa;
                
                /* Set number of working groups */
	              size_t global_work[3] = { oh , 1 , 1 };

                writeBuffers();
                cl_int status;

                status = clSetKernelArg(kernel, 1,  sizeof(cl_mem), &pinBuffer);
                status |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &pwBuffer);
                status |= clSetKernelArg(kernel, 3, sizeof(size_t), &h_dilation);
                status |= clSetKernelArg(kernel, 4, sizeof(cl_mem), &poutBuffer);
                status |= clSetKernelArg(kernel, 5, sizeof(size_t), &iw);
                status |= clSetKernelArg(kernel, 6, sizeof(size_t), &elem_stride);
                status |= clSetKernelArg(kernel, 7, sizeof(size_t), &ow);
                status |= clSetKernelArg(kernel, 8, sizeof(size_t), &line_stride);
                status |= clSetKernelArg(kernel, 9, sizeof(size_t), &kw);
                status |= clSetKernelArg(kernel, 10, sizeof(size_t), &kh);
                status |= clSetKernelArg(kernel, 11, sizeof(size_t), &h_dilation);
                status |= clSetKernelArg(kernel, 11, sizeof(size_t), &w_dilation);
                status |= clSetKernelArg(kernel, 12, sizeof(cl_mem), &pin_line);
                status |= clSetKernelArg(kernel, 13, sizeof(cl_mem), &pin_element);
                status |= clSetKernelArg(kernel, 14, sizeof(cl_mem), &pw_element);

                status |= clFinish(queueCL);
                checkError(status, "Failed to set arguments");
                
                status = clEnqueueNDRangeKernel(queueCL, kernel, 1, NULL, global_work, &global_work[0], 0, NULL, NULL);
                checkError(status, "Failed to launch kernel");
                
                readBuffers();
                status = clFinish(queueCL);
                checkError(status, "Failed to finish kernel");

              //  for (size_t y = 0; y < oh; y++) {
              //    const float_t *pin_line = pin;
              //    for (size_t x = 0; x < ow; x++) {
              //      const float_t *pin_element = pin_line;
              //      const float_t *pw_element  = pw;
              //      float_t sum{0};
              //      // should be optimized for small kernel(3x3,5x5)
              //      for (size_t wy = 0; wy < kh; wy++) {    // NOLINT
              //        for (size_t wx = 0; wx < kw; wx++) {  // NOLINT
              //           //std::cout << "Opencl Somando aqui" << std::endl;
              //          sum += pw_element[wx] * pin_element[wx * w_dilation];
              //        }
              //        pw_element += kw;
              //        pin_element += iw * h_dilation;
              //      }
              //      pout[x] += sum;
              //      pin_line += elem_stride;
              //    }
              //    pout += ow;
              //    pin += line_stride;
              //  }
             }
             if (params.has_bias) {
               vectorize::add(bias[o], out_area, pa);
             }
           }
         }
       },
       0u);
}

/******************************************************************/

template <typename tensor_t, typename vec_t>
void conv2d_op_opencl(const tensor_t &prev_out,
                        const vec_t &W,
                        tensor_t &dW,
                        tensor_t &db,
                        tensor_t &curr_delta,
                        tensor_t &prev_delta,
                        const core::conv_params &params,
                        const bool parallelize) {
  typedef typename vec_t::value_type float_t;

  for_i(parallelize, prev_out.size(), [&](size_t sample) {
    // propagate delta to previous layer
    for (size_t inc = 0; inc < params.in.depth_; inc++) {
      for (size_t outc = 0; outc < params.out.depth_; outc++) {
        if (!params.tbl.is_connected(outc, inc)) continue;

        size_t idx        = 0;
        idx               = params.in.depth_ * outc + inc;
        idx               = params.weight.get_index(0, 0, idx);
        const float_t *pw = &W[idx];

        idx                       = params.out.get_index(0, 0, outc);
        const float_t *pdelta_src = &curr_delta[sample][idx];

        idx = params.in_padded.get_index(0, 0, inc);
        // float_t* pdelta_dst = &(*prev_delta)[sample][idx];
        float_t *pdelta_dst = &prev_delta[sample][idx];

        for (size_t y = 0; y < params.out.height_; y++) {
          for (size_t x = 0; x < params.out.width_; x++) {
            const float_t *ppw = pw;

            idx                       = y * params.out.width_ + x;
            const float_t ppdelta_src = pdelta_src[idx];

            float_t *ppdelta_dst =
              pdelta_dst + y * params.h_stride * params.in_padded.width_ +
              x * params.w_stride;

            for (size_t wy = 0; wy < params.weight.height_; wy++) {   // NOLINT
              for (size_t wx = 0; wx < params.weight.width_; wx++) {  // NOLINT
                idx = wy * params.in_padded.width_ + wx;
                ppdelta_dst[idx] += *ppw++ * ppdelta_src;
              }
            }
          }
        }
      }
    }

    // accumulate dw
    for (size_t inc = 0; inc < params.in.depth_; inc++) {
      for (size_t outc = 0; outc < params.out.depth_; outc++) {
        if (!params.tbl.is_connected(outc, inc)) continue;

        for (size_t wy = 0; wy < params.weight.height_; wy++) {
          for (size_t wx = 0; wx < params.weight.width_; wx++) {
            float_t dst{0};

            size_t idx           = 0;
            idx                  = params.in_padded.get_index(wx, wy, inc);
            const float_t *prevo = &prev_out[sample][idx];

            idx                  = params.out.get_index(0, 0, outc);
            const float_t *delta = &curr_delta[sample][idx];

            if (params.w_stride > 1) {
              for (size_t y = 0; y < params.out.height_; y++) {
                size_t prevo_idx =
                  y * params.in_padded.width_ * params.h_stride;
                size_t delta_idx = y * params.out.width_;

                for (size_t x = 0; x < params.out.width_; x++) {
                  dst += prevo[prevo_idx + x * params.w_stride] *
                         delta[delta_idx + x];
                }
              }
            } else {
              for (size_t y = 0; y < params.out.height_; y++) {
                dst += vectorize::dot(
                  prevo + y * params.in_padded.width_ * params.h_stride,
                  delta + y * params.out.width_, params.out.width_);
              }
            }

            idx = params.in.depth_ * outc + inc;
            dW[sample][params.weight.get_index(wx, wy, idx)] += dst;
          }
        }
      }
    }

    // accumulate db
    if (params.has_bias) {
      for (size_t outc = 0; outc < params.out.depth_; outc++) {
        size_t idx            = params.out.get_index(0, 0, outc);
        const float_t *delta  = &curr_delta[sample][idx];
        const float_t *deltaa = delta + params.out.width_ * params.out.height_;
        db[sample][outc] += std::accumulate(delta, deltaa, float_t{0});
      }
    }
  });
}

}  // namespace kernels
}  // namespace tiny_dnn


// /*
//     Copyright (c) 2013, Taiga Nomi and the respective contributors
//     All rights reserved.

//     Use of this source code is governed by a BSD-style license that can be found
//     in the LICENSE file.
// */
// #pragma once

// #include <algorithm>
// #include <vector>

// #include "tiny_dnn/core/framework/op_kernel.h"

// namespace tiny_dnn {

// class Conv2dOpenCLForwardOp : public core::OpKernel {
//  public:
//   explicit Conv2dOpenCLForwardOp(const core::OpKernelConstruction &context)
//     : core::OpKernel(context) {}

//   void compute(core::OpKernelContext &context) override {
// #if defined(USE_OPENCL) || defined(USE_CUDA)
//     auto params = OpKernel::params_->conv();

//     // incoming/outcoming data
//     const tensor_t &in_data = context.input(0);
//     const tensor_t &W       = context.input(1);
//     const tensor_t &bias    = context.input(2);
//     tensor_t &out_data      = context.output(1);

//     // initialize outputs
//     fill_tensor(out_data, float_t{0});

//     // retrieve program from register
//     CLCudaAPI::Program program = ProgramManager::getInstance().program(
//       Program(context.device(), context.Layer()));
//     nn_warn("Got Program");

//     // Creates the kernel from the compiled program and sets the three
//     // arguments.
//     // Note that the indices of the arguments have to be set according to
//     // their
//     // order in the kernel.
//     auto kernel = CLCudaAPI::Kernel(program, "CFMulti");
//     nn_warn("Got Kernel");

//     tiny_dnn::Device *device = context.device();
//     CLCudaAPI::Context ctx   = context.device()->context();
//     CLCudaAPI::Queue queue   = context.device()->queue();

//     // TODO(edgar): check if we really need that
//     for (size_t i = 0; i < in_data.size(); ++i) {
//       // Creates device buffers and copies the host data to these
//       // device buffers.

//       auto dev_in = CLCudaAPI::Buffer<float_t>(ctx, queue, in_data[i].begin(),
//                                                in_data[i].end());

//       auto dev_W =
//         CLCudaAPI::Buffer<float_t>(ctx, queue, W[0].begin(), W[0].end());

//       auto dev_bias =
//         CLCudaAPI::Buffer<float_t>(ctx, queue, bias[0].begin(), bias[0].end());

//       auto dev_out = CLCudaAPI::Buffer<float_t>(ctx, queue, out_data[i].begin(),
//                                                 out_data[i].end());

//       kernel.SetArgument(0, dev_in);    // image_data
//       kernel.SetArgument(1, 0);         // image_offset
//       kernel.SetArgument(2, dev_W);     // kernel_data
//       kernel.SetArgument(3, 0);         // kernel_offset
//       kernel.SetArgument(4, dev_bias);  // bias
//       kernel.SetArgument(5, 0);         // bias_offset
//       kernel.SetArgument(6, dev_out);   // convolved_image
//       kernel.SetArgument(7, 0);         // convolved_image_offset

//       kernel.SetArgument(8, static_cast<cl_ushort>(params.in.width_));  // WIDTH
//       kernel.SetArgument(9,
//                          static_cast<cl_ushort>(params.in.height_));  // HEIGHT
//       kernel.SetArgument(
//         10,
//         static_cast<cl_ushort>(params.out.width_));  // OUTPUT_W
//       kernel.SetArgument(
//         11, static_cast<cl_ushort>(params.out.height_));  // OUTPUT_H

//       // We make sure that work group size is multiple of 16
//       size_t res  = device->device().MaxWorkGroupSize() % 16;
//       size_t size = device->device().MaxWorkGroupSize() - res;

//       auto global = std::vector<size_t>{size};
//       auto local  = std::vector<size_t>{16};

//       // Creates a new CLCudaAPI event to be able to time kernels
//       auto event = CLCudaAPI::Event();

//       // Enqueues the kernel and waits for the result.
//       // Note that launching the kernel is always a-synchronous and thus
//       // requires finishing the queue in order to complete the operation.
//       nn_info("## Running the kernel ...");

//       kernel.Launch(queue, global, local, event.pointer());
//       queue.Finish(event);

//       nn_info(" > Took " + to_string(event.GetElapsedTime()) + " ms");

//       // Upload data GPU -> CPU
//       std::vector<float_t> out(out_data[i].size(), 0);
//       dev_out.Read(queue, out_data[i].size(), out);

//       // FOR DEBUG ONLY
//       nn_warn("output kernel");
//       for (size_t j = 0; j < out.size(); ++j) {
//         std::cout << out[j] << " ";
//       }
//       std::cout << std::endl;

//       // copy back
//       std::copy(std::begin(out), std::end(out),
//                 std::back_inserter(out_data[i]));
//     }
// #else
//     CNN_UNREFERENCED_PARAMETER(context);
//     throw nn_error("Not compiled with OpenCL");
// #endif
//   }
// };

// class Conv2dOpenCLBackwardOp : public core::OpKernel {
//  public:
//   explicit Conv2dOpenCLBackwardOp(const core::OpKernelConstruction &context)
//     : core::OpKernel(context) {}

//   void compute(core::OpKernelContext &context) override {
//     CNN_UNREFERENCED_PARAMETER(context);
//     nn_error("Not implemented yet.");
//   }
// };

// }  // namespace tiny_dnn
