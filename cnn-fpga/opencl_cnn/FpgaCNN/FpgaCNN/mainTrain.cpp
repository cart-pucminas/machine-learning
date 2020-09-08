#include <cstdlib>
#include <iostream>
#include <vector>
#include <pthread.h>
#include "tiny_dnn/tiny_dnn.h"

using namespace std;

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

#pragma region TrainCNN

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

  std::cout << "end training." << std::endl;

  // test and show results
  nn.test(test_images, test_labels).print_detail(std::cout);
  // save networks
  std::ofstream ofs("cnn-weights");
  ofs << nn;
}

#pragma endregion

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

int main(int argc, char **argv) {
  double learning_rate                   = 1;
  int epochs                             = 30;
  std::string data_path                  = "";
  int minibatch_size                     = 16;
  tiny_dnn::core::backend_t backend_type = tiny_dnn::core::default_engine();

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
    train_nslkdd(data_path, learning_rate, epochs, minibatch_size,
                  backend_type, std::cout);
  } catch (tiny_dnn::nn_error &err) {
    std::cerr << "Exception: " << err.what() << std::endl;
  }

  return 0;
}
