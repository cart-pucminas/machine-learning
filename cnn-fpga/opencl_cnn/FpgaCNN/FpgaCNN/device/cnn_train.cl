// Copyright (C) 2013-2018 Altera Corporation, San Jose, California, USA. All rights reserved.
// Permission is hereby granted, free of charge, to any person obtaining a copy of this
// software and associated documentation files (the "Software"), to deal in the Software
// without restriction, including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to
// whom the Software is furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
// 
// This agreement shall be governed in all respects by the laws of the State of California and
// by the laws of the United States of America.

// AOC kernel demonstrating device-side printf call

__kernel void cnn_train(__global float* restrict pin, 
                        __global float* restrict pw, 
                        const int h_dilation,
                        __global float* restrict pout,
                        const int iw,
                        const int elem_stride,
                        const int ow,
                        const int line_stride,
                        const int kw,
                        const int kh,
                        const int w_dilation, 
                        __local float* restrict pin_line,
                        __local float* restrict pin_element,
                        __local float* restrict pw_element
                       ) 
{
  // Get index of the work item
      unsigned thread_id = get_global_id(0);

  //  for (size_t y = 0; y < oh; y++) {
      pin_line = pin;
      for (size_t x = 0; x < ow; x++) {
        pin_element = pin_line;
        pw_element  = pw;
        float sum = 0;
        // should be optimized for small kernel(3x3,5x5)
        for (int wy = 0; wy < kh; wy++) {    // NOLINT
          for (int wx = 0; wx < kw; wx++) {  // NOLINT
            //std::cout << "Opencl Somando aqui" << std::endl;
            sum += pw_element[wx] * pin_element[wx * w_dilation];
          }
          pw_element += kw;
          pin_element += iw * h_dilation;
        }
        pout[x] += sum;
        pin_line += elem_stride;
      }
      pout += ow;
      pin += line_stride;
  //  }
}

