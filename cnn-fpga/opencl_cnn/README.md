### C++ Files

- O projeto possui alguns arquivos *.cpp* que são executados somente em CPU;
- O arquivo **mainTrain.cpp** realiza o treinamento da rede neural convolucional, através da leitura de dois arquivos CSV (Ex: *"/TrainCnn50000.csv"* e *"/Validation50000.csv"*), gerando ao final do processo um arquivo de saída (*result.csv*), contendo em cada linha o número da epóca, tempo de execução e acurácia;
- O arquivo **mainTest.cpp** realiza a predição de novos registros a partir da rede neural treinada (*cnn-weights*). Ele espera como entrada um arquivo CSV, contendo apenas um registro no formato esperado pela CNN. Ao final do processo um arquivo de saída (*resultTest.csv*) é gerado, contendo em cada linha o número das classes identificadas e a probabilidade das mesmas;
- Para executar os arquivos é necessário realizar os seguintes passos:
    - Acessar a pasta **mestrado-cnn/opencl_cnn/FPGACNN**;
    
    - Compilar os códigos;  

        `g++ -std=c++11 -IFpgaCNN/tiny_dnn -O3 FpgaCNN/mainTrain.cpp -lpthread -o mainTrainFile`

        `g++ -std=c++11 -IFpgaCNN/tiny_dnn -O3 FpgaCNN/mainTest.cpp -lpthread -o mainTestFile`

    - Executar o treinamento;

        `./mainTrainFile --data_path FpgaCNN/nsl-kdd-csv/ --learning_rate 0.01 --epochs 100 --minibatch_size 100 --backend_type internal`

    - Executar o teste (predição);

        `./mainTestFile FpgaCNN/nsl-kdd-csv/TestCnn1000.csv `

### OpenCL Files

- O arquivo **main.cpp** realiza o treinamento da rede neural convolucional, através da leitura de dois arquivos CSV (Ex: *"/FpgaEditTrain.csv"* e *"/FpgaTestTrain.csv"*), gerando ao final do processo um arquivo de saída (*result.csv*), contendo em cada linha o número da epóca, tempo de execução e acurácia;
- Além disso, o arquivo possui uma chamada ao kernel OpenCL, responsável por executar partes do código em FPGA;
- O arquivo *.cl* está disponível na pasta **mestrado-cnn/FpgaCNN/FpgaCNN/device**;
- Para executar os arquivos é necessário realizar os seguintes passos:
    - Acessar a infraestrutura da Intel `ssh myuser@ssh-iam.intel-research.net`

    - Clonar o repositório [mestrado-cnn](https://github.com/lucasandradecb/mestrado-cnn);

    - Ajustar as variáveis de ambiente da plataforma, para executar os códigos em OpenCL;

        `source /export/fpga/bin/setup-fpga-env fpga-bdx-opencl`

    - Acessar o nó de FPGA da plataforma, para poder executar os arquivos OpenCL;

        `qsub-fpga`

    - Acessar a pasta **mestrado-cnn/opencl_cnn/FPGACNN/FpgaCNN/device** e gerar o arquivo *.aocx* do kernel;

        `qsub-aoc hello_world.cl`

    - Caso queira, pode ser verificado se o arquivo *.cl* está na fila de execução;

        `qstat -u myuser`

    - Compilar o código do host utilizando o arquivo **Makefile**;

        `make`

    - Copiar o arquivo *.aocx* gerado para a pasta **mestrado-cnn/opencl_cnn/FPGACNN/FpgaCNN/bin**;

        `cp mestrado-cnn/opencl_cnn/FPGACNN/FpgaCNN/device/hello_world.aocx mestrado-cnn/opencl_cnn/FPGACNN/FpgaCNN/bin`
    
    - Acessar a pasta **mestrado-cnn/opencl_cnn/FPGACNN** e executar o treinamento da rede;

        `./FpgaCNN/bin/host --data_path FpgaCNN/nsl-kdd-csv/ --learning_rate 0.1 --epochs 10 --minibatch_size 10 --backend_type internal`

    - Gerar relatório de consumo de energia. Acessar a pasta do projeto quartus gerada após a execução do *qsub-aoc* e executar o comando abaixo. Em seguida, deverá ser acessado o arquivo **top.pow.summary** para verificar o consumo;

        `quartus_pow ./top.qdb --default_input_io_toggle_rate=12.5% --default_toggle_rate=12.5% --estimate_power=on`

    - Para verificar a utilização de recursos do hardware basta visualizar o relatório exibido no arquivo **meuapp.log**;

