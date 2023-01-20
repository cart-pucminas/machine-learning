### C++ Files

- The project has some .cpp files that are executed only on CPU;
- The mainTrain.cpp file performs the training of the convolutional neural network, through the reading of two CSV files (Ex: *"/TrainCnn50000.csv"* and *"/Validation50000.csv"*), generating at the end of the process an output file (result.csv), containing in each line the number of the epoch, execution time and accuracy;
- The mainTest.cpp file performs the prediction of new records from the trained neural network (cnn-weights). It expects as input a CSV file containing only one record in the format expected by the CNN. At the end of the process, an output file (resultTest.csv) is generated, containing in each line the number of the identified classes and the probability of them;
- To execute the files, the following steps are required:
     -Access the cnn-fpga/opencl_cnn/FPGACNN folder;

     - Compile the codes;  

        `g++ -std=c++11 -IFpgaCNN/tiny_dnn -O3 FpgaCNN/mainTrain.cpp -lpthread -o mainTrainFile`

        `g++ -std=c++11 -IFpgaCNN/tiny_dnn -O3 FpgaCNN/mainTest.cpp -lpthread -o mainTestFile`

    - Execute the training;

        `./mainTrainFile --data_path FpgaCNN/nsl-kdd-csv/ --learning_rate 0.01 --epochs 100 --minibatch_size 100 --backend_type internal`

    - Execute the test (prediction);

        `./mainTestFile FpgaCNN/nsl-kdd-csv/TestCnn1000.csv `

### OpenCL Files

- The **main.cpp** file performs the training of the convolutional neural network, through the reading of two CSV files (Ex: *"/FpgaEditTrain.csv"* and *"/FpgaTestTrain.csv"*), generating at the end of the process an output file (*result.csv*), containing in each line the number of the epoch, execution time and accuracy;

- In addition, the file has a call to the OpenCL kernel, responsible for executing parts of the code on FPGA;
- The *.cl* file is available in the folder **cnn-fpga/FpgaCNN/FpgaCNN/device**;
- To execute the files, the following steps are required:

    - Access the Intel infrastructure ssh `myuser@ssh-iam.intel-research.net`

    - Clone the cnn-fpga repository;

    - Adjust the platform environment variables to run the codes in OpenCL;

          `source /export/fpga/bin/setup-fpga-env fpga-bdx-opencl`

    - Access the FPGA node of the platform, to be able to run the OpenCL files;

          `qsub-fpga`

    - Access the folder **cnn-fpga/opencl_cnn/FPGACNN/FpgaCNN/device** and generate the *.aocx* file of the kernel;

           `qsub-aoc hello_world.cl`

    - If you wish, you can verify if the *.cl* file is in the execution queue;

            `qstat -u myuser`

    - Compile the host code using the **Makefile**;

             `make`

    - Copy the generated *.aocx* file to the folder **cnn-fpga/opencl_cnn/FPGACNN/FpgaCNN/bin**;

             `cp cnn-fpga/opencl_cnn/FPGACNN/FpgaCNN/device/hello_world.aocx cnn-fpga/opencl_cnn/FPGACNN/FpgaCNN/bin`

    - Access the folder **cnn-fpga/opencl_cnn/FPGACNN** and execute the training of the network;

              `./FpgaCNN/bin/host --data_path FpgaCNN/nsl-kdd-csv/ --learning_rate 0.1 --epochs 10 --minibatch_size 10 --backend_type internal`

    - Generate an energy consumption report. Access the project quartus folder generated after the execution of *qsub-aoc* and run the command below. Then, you should access the **top.pow.summary** file to check the consumption;

               `quartus_pow ./top.qdb --default_input_io_toggle_rate=12.5% --default_toggle_rate=12.5% --estimate_power=on`

    - To check the hardware resource usage, simply view the report displayed in the **myapp.log** file.
