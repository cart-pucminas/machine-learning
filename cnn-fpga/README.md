### Convolutional Neural Network - FPGA

- Projeto de mestrado desenvolvido pelo aluno Lucas Andrade Maciel, utilizando como base a biblioteca open source tiny-dnn;
- Divisão do projeto em duas partes (database e opencl_cnn);
- Database: Contempla a base de dados original de detecção de intrusões de rede utilizada, e scripts em c, capazes de converter a base original no formato utilizado pela CNN;
- Opencl_cnn: Contempla o código da rede neural utilizada, bem como os seus arquivos fontes e bases utilizadas para treino e teste;
- Aplicação foi executada, utilizando como infraestrutura o cluster de FPGA vLab disponibilizado pela Intel;
- Utilização das linguagens C/C++ e OpenCL no desenvolvimento do projeto.