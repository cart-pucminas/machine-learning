/*
    Copyright (c) 2013, Taiga Nomi and the respective contributors
    All rights reserved.
    Use of this source code is governed by a BSD-style license that can be found
    in the LICENSE file.
*/
#include <iostream>
#include <time.h>

#include "tiny_dnn/tiny_dnn.h"

using namespace std;

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

// rescale output to 0-100
template <typename Activation>
double rescale(double x) {
  Activation a(1);
  return 100.0 * (x - a.scale().first) / (a.scale().second - a.scale().first);
}

template <typename N>
void construct_net(N &nn) {
  using conv    = tiny_dnn::convolutional_layer;
  using pool    = tiny_dnn::max_pooling_layer;
  using fc      = tiny_dnn::fully_connected_layer;
  using relu    = tiny_dnn::relu_layer;
  using softmax = tiny_dnn::softmax_layer;

  const size_t n_fmaps  = 11;  ///< number of feature maps for upper layer
  const size_t n_fmaps2 = 22;  ///< number of feature maps for lower layer
  const size_t n_fc = 22;  ///< number of hidden units in fully-connected layer

  nn << conv(11, 11, 3, 1, n_fmaps, tiny_dnn::padding::same)       // C11
     << pool(11, 11, n_fmaps, 2)                                   // P4
     << relu(5, 5, n_fmaps)                                        // activation
     << conv(5, 5, 2, n_fmaps, n_fmaps, tiny_dnn::padding::same)   // C5
     << pool(5, 5, n_fmaps, 2)                                     // P3
     << relu(2, 2, n_fmaps)                                        // activation
     << conv(2, 2, 1, n_fmaps, n_fmaps2, tiny_dnn::padding::same)  // C2
     << pool(2, 2, n_fmaps2, 2)                                    // P1
     << relu(1, 1, n_fmaps2)                                       // activation
     << fc(1 * 1 * n_fmaps2, n_fc)                                 // FC22
     << fc(n_fc, 6) << softmax(6);                                 // FC6
}

void recognize(const std::string &dictionary, const std::string &src_filename) {
  tiny_dnn::network<tiny_dnn::sequential> nn;
  clock_t start_time, end_time;
  double predict_time = 0;
  double test_accuracy = 0;
  double predict_correct = 0;
  
  construct_net(nn);

  // load nets
  std::ifstream ifs(dictionary.c_str());
  ifs >> nn;

  // convert cvs file to vec_t
  std::vector<tiny_dnn::label_t> train_labels, test_labels, data_label;
  std::vector<tiny_dnn::vec_t> train_images, test_images, data;

  parse_nslkdd(src_filename, &data, &data_label, 0, 0, 0);

  // recognize
  remove("resultsTest.csv");
  int dataCount = 0;

  for (dataCount = 0; dataCount < data.size(); dataCount++)
  {
    start_time = clock();
    auto res = nn.predict(data[dataCount]);
    end_time = clock();
    
    predict_time = (end_time - start_time)/(double)CLOCKS_PER_SEC;

    std::vector<std::pair<double, int>> scores;

    // sort & print top-3
    for (int i = 0; i < 6; i++)
      scores.emplace_back(rescale<tiny_dnn::tanh_layer>(res[i]), i);

    sort(scores.begin(), scores.end(), std::greater<std::pair<double, int>>());
    
    std::string linha;
     
    if (data_label[dataCount] == (float)scores[0].second)
      predict_correct++;

    for (int i = 0; i < 1; i++)
    {
      std::cout << dataCount << "," << scores[i].second << "," << scores[i].first << "," << predict_time << std::endl;
      linha =  std::to_string(dataCount) + "," + std::to_string(scores[i].second) + "," +  std::to_string(scores[i].first) + "," + std::to_string(predict_time)  + "\n";  
      writeFile("resultsTest.csv", linha);
    }
  }
   
   std::string linha =  "Test Accuracy , " + std::to_string(((predict_correct/data.size())*100));
   writeFile("resultsTest.csv", linha);

   std::cout << linha << "%" << std::endl;
}

int main(int argc, char **argv) {
  if (argc != 2) {
    std::cout << "please specify csv file";
    return 0;
  }
  recognize("cnn-weights", argv[1]);
}