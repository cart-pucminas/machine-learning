/*
    Copyright (c) 2013, Taiga Nomi and the respective contributors
    All rights reserved.

    Use of this source code is governed by a BSD-style license that can be found
    in the LICENSE file.
*/
#pragma once

#include <algorithm>
#include <cstdint>
#include <fstream>
#include <string>
#include <vector>

#include "tiny_dnn/util/util.h"

#define NSL_KDD_IMAGE_DEPTH (1)
#define NSL_KDD_IMAGE_WIDTH (11)
#define NSL_KDD_IMAGE_HEIGHT (11)
#define NSL_KDD_IMAGE_AREA (NSL_KDD_IMAGE_WIDTH * NSL_KDD_IMAGE_HEIGHT)
#define NSL_KDD_IMAGE_SIZE (NSL_KDD_IMAGE_AREA * NSL_KDD_IMAGE_DEPTH)

namespace tiny_dnn {

  /**
   * parse CIFAR-10 database format images
   *
   * @param filename [in] filename of database(binary version)
   * @param train_images [out] parsed images
   * @param train_labels [out] parsed labels
   * @param scale_min  [in]  min-value of output
   * @param scale_max  [in]  max-value of output
   * @param x_padding  [in]  adding border width (left,right)
   * @param y_padding  [in]  adding border width (top,bottom)
   **/
  inline void parse_nslkdd(const std::string &filename,
                            std::vector<vec_t> *train_images,
                            std::vector<label_t> *train_labels,
                            float_t scale_min,
                            int x_padding,
                            int y_padding) {

    uint8_t label;

    //readfile
    std::fstream file;
    file.open(filename.c_str());
    if (file.fail() || file.bad())
      throw nn_error("failed to open file:" + filename);
    
    std::string line;
    int countCsvItens = 0;
    int countColItens = 0;

    while (getline( file, line,'\n'))  
    {
      std::istringstream templine(line); 
      std::string data;
      vec_t img; 
    
      int w = NSL_KDD_IMAGE_WIDTH + 2 * x_padding;
      int h = NSL_KDD_IMAGE_HEIGHT + 2 * y_padding;

      img.resize(w * h * NSL_KDD_IMAGE_DEPTH, scale_min);

      while (getline( templine, data,',')) 
      { 
        if (countCsvItens == 121)
          label = atof(data.c_str());
        else      
        {       
          img[countColItens] = atof(data.c_str());
          countColItens ++;
        } 

        countCsvItens++;
      }

      countCsvItens = 0;
      countColItens = 0;
      train_images->push_back(img);
      train_labels->push_back(label);
    }
    file.close();
  }

}  // namespace tiny_dnn
