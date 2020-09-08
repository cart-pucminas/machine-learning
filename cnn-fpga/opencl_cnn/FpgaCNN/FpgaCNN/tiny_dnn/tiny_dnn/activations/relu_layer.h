/*
    Copyright (c) 2013, Taiga Nomi and the respective contributors
    All rights reserved.

    Use of this source code is governed by a BSD-style license that can be found
    in the LICENSE file.
*/
#pragma once

#include <algorithm>
#include <string>
#include <utility>

#include "tiny_dnn/activations/activation_layer.h"
#include "tiny_dnn/layers/layer.h"

// #include "CL/opencl.h"
// #include "AOCLUtils/aocl_utils.h"
//using namespace aocl_utils;


//static const size_t work_group_size = 8;  // 8 threads in the demo workgroup
// Defines kernel argument value, which is the workitem ID that will
// execute a printf call
//static const int thread_id_to_output = 2;

// OpenCL runtime configuration
// static cl_context context = NULL;
// static cl_command_queue queueCL = NULL;
// static cl_kernel kernel = NULL;

namespace tiny_dnn {

class relu_layer : public activation_layer {
 public:
  using activation_layer::activation_layer;
  
 // relu_layer(cl_context p_context, cl_command_queue p_queue, cl_kernel p_kernel) 
 // : cl_context(p_context), cl_command_queue(p_queue), cl_kernel(p_kernel) {}

  std::string layer_type() const override { return "relu-activation"; }


// void forward_activation(const vec_t &x, vec_t &y) override      
// {

//   cl_int status;
//   std::cout << "Train OpenCL Relu" << std::endl;

//   /* Host2FPGA memory buffers */
//   cl_mem input_buffer, output_buffer, inputsize_buffer;
//   int x_size;

// //Create Memory buffers
//   input_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
// 					sizeof(float) * x.size(), x, &status);
// 	output_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 						sizeof(float) * y.size(), y, &status);
// 	inputsize_buffer = clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
// 					sizeof(int), x_size, &status);
//   checkError(status, "Failed to create buffers");	
  
// //Write buffers

//   status  = clEnqueueWriteBuffer(queueCL, input_buffer, CL_FALSE,
//         	0, sizeof(float)* x.size(), x, 0, NULL, NULL);
// 	status  = clEnqueueWriteBuffer(queueCL, output_buffer, CL_FALSE,
//         	0, sizeof(float) * y.size(), y, 0, NULL, NULL);
//   status  = clEnqueueWriteBuffer(queueCL, inputsize_buffer, CL_FALSE,
//         	0, sizeof(int), x_size, 0, NULL, NULL);
  
// 	checkError(status, "Failed to write buffers");

// //Set arguments
//   status = clSetKernelArg(kernel, 0,  sizeof(cl_mem), &input_buffer);
//   status = clSetKernelArg(kernel, 1,  sizeof(cl_mem), &output_buffer);
//   status = clSetKernelArg(kernel, 2,  sizeof(int), &inputsize_buffer);
//   status |= clFinish(queueCL);
// 	checkError(status, "Failed to set arguments");

//   // Configure work set over which the kernel will execute
//   size_t wgSize[3] = {work_group_size, 1, 1};
//   size_t gSize[3] = {work_group_size, 1, 1};

//   // Launch the kernel
//   status = clEnqueueNDRangeKernel(queueCL, kernel, 1, NULL, gSize, wgSize, 0, NULL, NULL);
//   checkError(status, "Failed to launch kernel");

//   // Read Buffer
//    status  = clEnqueueReadBuffer(queueCL, input_buffer, CL_TRUE,
//         	0, sizeof(float)* x.size(), x, 0, NULL, NULL);
// 	status  = clEnqueueReadBuffer(queueCL, output_buffer, CL_TRUE,
//         	0, sizeof(float) * y.size(), y, 0, NULL, NULL);
//   status  = clEnqueueReadBuffer(queueCL, inputsize_buffer, CL_TRUE,
//         	0, sizeof(int), x_size, 0, NULL, NULL);
 
// 	checkError(status, "Failed to read buffers");

//   // Wait for command queue to complete pending events
//   status = clFinish(queueCL);
//   checkError(status, "Failed to finish");

//   printf("\nKernel execution is complete.\n");

//   // Free the resources allocated
//   cleanup();
// }

  void forward_activation(const vec_t &x, vec_t &y) override {
    for (size_t j = 0; j < x.size(); j++) {
      y[j] = std::max(float_t(0), x[j]);
    }
  }

  void backward_activation(const vec_t &x,
                           const vec_t &y,
                           vec_t &dx,
                           const vec_t &dy) override {
    for (size_t j = 0; j < x.size(); j++) {
      // dx = dy * (gradient of relu)
      dx[j] = dy[j] * (y[j] > float_t(0) ? float_t(1) : float_t(0));
    }
  }

  std::pair<float_t, float_t> scale() const override {
    return std::make_pair(float_t(0.1), float_t(0.9));
  }

  friend struct serialization_buddy;
};

}  // namespace tiny_dnn
