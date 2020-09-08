### Database

- A base de dados utilizada neste trabalho é a NSL-KDD, disponibilizada no repositório [defecom](https://github.com/defcom17/NSL_KDD);
- Os arquivos originais da base se encontram na pasta nsl_kdd;
- A pasta convert2cnn possui um script capaz de converter um arquivo csv da base NSL-KDD para um formato normalizado, que pode ser processado pela CNN desenvolvida;
- O código fonte deste script está disponibilizado na pasta convert2cnn/src. Além disso, foi desenvolvido um projeto para executar o script, com arquivos de teste (conver2cnn/codeblocks_project);
- Para utilizar o script, é necessário abrir o csv original (treino ou teste) e remover a última coluna, pois não é utilizada, e a coluna `num_outbound_cmds`, pois a mesma possui todos os registros iguais a zero, não sendo assim representativa. Além disso, é obrigatório inserir na primeira linha do arquivo, os nomes das colunas (atributos);

### Script
- O método `main` espera que seja passado por parâmetro o nome do arquivo csv que será processado (Ex: **Small_Training_Set.csv**);
- O arquivo csv recebido deverá conter 41 colunas, sendo 40 de atributos e 1 referente ao label;
- O script normaliza seus valores entre 0-1, utilizando a técnica min-max;
- Transforma colunas com valores categóricos (protocol_type, service, flag), em novas colunas com valores binários (Ex: protocol_type possui três tipos de atributos: *tcp*, *udp* e *icmp*, que são dividos em três colunas [1,0,0], [0,1,0] e [0,0,1], respectivamente);
- As 41 colunas originais são transformadas em 122, sendo 121 de atributos e 1 de label;
- Os 22 tipos de ataques são divididos em 6 de classes de acordo com suas características (*Dos, U2r, R2l, Probe, Normal, Unknown*);
- Ao final do processo, o arquivo **FpgaEditCnn.csv** é gerado. Este arquivo possui em sua primeira linha, o nome original das colunas processadas, em sua última linha, os nomes das colunas gerados de acordo com os processamentos realizados, e no meio todos os dados avaliados;
- Para utilizar o arquivo na CNN, é necessário remover a primeira e última linha do arquivo.
