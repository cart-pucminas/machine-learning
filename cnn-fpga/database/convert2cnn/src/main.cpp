#include <iostream>
#include <algorithm>
#include <cstdint>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

using namespace std;

#define NUM_COLUMNS 122
#define NUM_PROTOCOL_TYPES 3
#define NUM_SERVICES 70
#define NUM_FLAGS 11

/// Procura elemento no vetor. Caso encontre, retorna o indice. Caso contrario retorna -1
int findInVector(const std::vector<string>  &vecOfElements, string  &element)
{
	int result = -1;

	auto it = std::find(vecOfElements.begin(), vecOfElements.end(), element);

	if (it != vecOfElements.end())
	{
		result = distance(vecOfElements.begin(), it);
	}

	return result;
}

/// Realiza a gravacao do arquivo contendo os dados
void writeFile (char *nomeArquivo, std::string &texto)
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

/// Realiza a conversao da coluna categórica em vetores de inteiros
void convertCategoricalColumn (std::vector<string>  &vecOfElements, string  &data, std::string  *lineVector, std::string  *columnNameVector, int countColumn, int catSize)
{
    int itemIndex = findInVector(vecOfElements, data);

    if (itemIndex == -1)
    {
        vecOfElements.push_back(data);
        itemIndex = findInVector(vecOfElements, data);
    }

    for (int i=0; i < catSize; i++)
    {
        lineVector[countColumn + i] = "0";
    }

    lineVector[countColumn + itemIndex] = "1";

     for (unsigned j=0; j<vecOfElements.size(); j++)
            columnNameVector[countColumn + j] = vecOfElements.at(j);
}

/// Realiza a conversao da coluna de classes em valores inteiros
void convertClassType (string  &data, std::string  *lineVector, int countColumn)
{
    enum classEnum {Dos, U2r, R2l, Probe, Normal, Unknown};

    std::vector<string> dosVector = {"apache2", "back", "land", "mailbomb", "neptune", "pod", "teardrop" "smurf", "worm", "processtable", "udpstorm"};

    std::vector<string> u2rVector = {"bufferoverflow", "ps", "perl", "sqlattack", "loadmodule", "rootkit", "xterm"};

    std::vector<string> r2lVector = {"ftpwrite", "spy", "warezclient", "httptunnel", "imap", "named", "guesspasswd", "sendmail", "snmpgetattack", "multihop", "phf", "snmpguess", "wxlock", "warezmaster", "xsnoop"};

    std::vector<string> probeVector = {"ipsweep", "nma", "mscan", "nmap", "portsweep", "satan", "saint"};

    std::vector<string> normalVector = {"normal"};

    if (findInVector(dosVector, data) != -1)
    {
        lineVector[countColumn] = std::to_string(classEnum::Dos);
    }
    else if (findInVector(u2rVector, data) != -1)
    {
        lineVector[countColumn] = std::to_string(classEnum::U2r);
    }
    else if (findInVector(r2lVector, data) != -1)
    {
        lineVector[countColumn] = std::to_string(classEnum::R2l);
    }
    else if (findInVector(probeVector, data) != -1)
    {
        lineVector[countColumn] = std::to_string(classEnum::Probe);
    }
    else if (findInVector(normalVector, data) != -1)
    {
        lineVector[countColumn] = std::to_string(classEnum::Normal);
    }
    else
    {
        lineVector[countColumn] = std::to_string(classEnum::Unknown);
    }
}

/// Normaliza os dados das colunas entre 0-1, utilizando a tecnica de min max
/// result = (xi - xmin) / (xmax - xmin)
/// Obs: xmin = 0 e xmax esta definido na matrix colMaxValues
std::string normalizeData(std::vector<std::vector<string>> &colMaxValues, string  &data, int countCsvColumn)
{
   float result = 0;

   result = (std::stof(data) - 0.0) / (std::stof(colMaxValues[countCsvColumn][1]) - 0.0);

   return std::to_string(result);
}

/// Monta os dados que serao gravados nos arquivos
void createData(std::string databaseLine[], int qtdColumns)
{
   int i = 0;
   std:string linha;

   for (i=0; i< qtdColumns; i++)
   {
       if (i==0)
       {
          linha = linha + databaseLine[i];
       }
       else
       {
          linha = linha +  "," + databaseLine[i];
       }
   }
   linha = linha + "\n";
   writeFile("FpgaEditCnn.csv", linha);
}

/// Le as informações do arquivo e processa os dados
void readFile (const std::string &filename, std::vector<std::vector<string>> &colMaxValues)
{
    std::fstream file;
    file.open(filename.c_str());
    if (file.fail() || file.bad())
    {
       printf("Problemas na CRIACAO do arquivo %s\n", filename);
       return;
    }

    std::string line;
    int countCsvColumn = 0;
    int countColumn = 0;
    int countLine = 0;

    std::vector<string> protocolTypeVector;
    std::vector<string> serviceVector;
    std::vector<string> flagVector;
    std::string lineVector[122];
    std::string columnNameVector[122];

    while (getline( file, line,'\n'))
    {
        std::istringstream templine(line);
        std::string data;

        while (getline( templine, data,','))
        {
            //Linha com os nomes dos atributos
            if (countLine == 0)
            {
                columnNameVector[countColumn] = data.c_str();

                //Verifica se a coluna é de atributos categoricos
                if (data == "protocol_type")
                {
                    for (int i=1; i < NUM_PROTOCOL_TYPES; i++)
                        columnNameVector[countColumn + i] = data.c_str();

                    countColumn = countColumn + NUM_PROTOCOL_TYPES - 1;
                }
                else if (data == "service")
                {
                    for (int i=1; i < NUM_SERVICES; i++)
                        columnNameVector[countColumn + i] = data.c_str();

                    countColumn = countColumn + NUM_SERVICES - 1;
                }
                else if (data == "flag")
                {
                    for (int i=1; i < NUM_FLAGS; i++)
                        columnNameVector[countColumn + i] = data.c_str();

                    countColumn = countColumn + NUM_FLAGS - 1;
                }
            }
            else
            {

                if (countColumn == 1) // coluna que inicia os tipos de protocolos
                {
                    convertCategoricalColumn(protocolTypeVector,data,lineVector,columnNameVector, countColumn, NUM_PROTOCOL_TYPES);

                    countColumn = countColumn + NUM_PROTOCOL_TYPES - 1;
                }
                else if (countColumn == 4) // coluna que inicia os tipos de serviços
                {
                    convertCategoricalColumn(serviceVector, data, lineVector, columnNameVector, countColumn, NUM_SERVICES);

                    countColumn = countColumn + NUM_SERVICES - 1;
                }
                else if (countColumn == 74) // coluna que inicia as flags
                {
                    convertCategoricalColumn(flagVector, data, lineVector, columnNameVector, countColumn, NUM_FLAGS);

                    countColumn = countColumn + NUM_FLAGS - 1;
                }
                else if (countColumn == 121) // coluna que inicia as flags
                {
                    convertClassType(data, lineVector, countColumn);
                }
                else
                {
                    lineVector[countColumn] = normalizeData(colMaxValues, data, countCsvColumn);
                }
            }

            countColumn++;
            countCsvColumn++;
        }

        if (countLine==0)
        {
            createData(columnNameVector, NUM_COLUMNS);
        }
        else
        {
            createData(lineVector, NUM_COLUMNS);

            for (int j=0; j<NUM_COLUMNS; j++)
                lineVector[j].clear();
        }

        countLine++;
        countColumn = 0;
        countCsvColumn = 0;
    }

    createData(columnNameVector, NUM_COLUMNS);
    file.close();
}

int main()
{
    //Matriz contendo os valores maximos de cada coluna da base
    std::vector<std::vector<string>> colMaxValues = {
    {"duration"	, "57715" } ,
    {"protocol_type"	, "1" } ,
    {"service"	, "1" } ,
    {"flag"	, "1" } ,
    {"src_bytes"	, "62825648" } ,
    {"dst_bytes"	, "1345927" } ,
    {"land"	, "1" } ,
    {"wrong_fragment"	, "3" } ,
    {"urgent"	, "3" } ,
    {"hot"	, "101" } ,
    {"num_failed_logins"	, "4" } ,
    {"logged_in"	, "1" } ,
    {"num_compromised"	, "796" } ,
    {"root_shell"	, "1" } ,
    {"su_attempted"	, "2" } ,
    {"num_root"	, "878" } ,
    {"num_file_creations"	, "100" } ,
    {"num_shells"	, "5" } ,
    {"num_access_files"	, "4" } ,
    {"is_host_login"	, "1" } ,
    {"is_guest_login"	, "1" } ,
    {"count"	, "511" } ,
    {"srv_count"	, "511" } ,
    {"serror_rate"	, "1" } ,
    {"srv_serror_rate"	, "1" } ,
    {"rerror_rate"	, "1" } ,
    {"srv_rerror_rate"	, "1" } ,
    {"same_srv_rate"	, "1" } ,
    {"diff_srv_rate"	, "1" } ,
    {"srv_diff_host_rate"	, "1" } ,
    {"dst_host_count"	, "255" } ,
    {"dst_host_srv_count"	, "255" } ,
    {"dst_host_same_srv_rate"	, "1" } ,
    {"dst_host_diff_srv_rate"	, "1" } ,
    {"dst_host_same_src_port_rate"	, "1" } ,
    {"dst_host_srv_diff_host_rate"	, "1" } ,
    {"dst_host_serror_rate"	, "1" } ,
    {"dst_host_srv_serror_rate"	, "1" } ,
    {"dst_host_rerror_rate"	, "1" } ,
    {"dst_host_srv_rerror_rate"	, "1" }

  };

    //Remove
    remove( "FpgaEditCnn.csv" );
    readFile("Small Training Set.csv", colMaxValues);
    //readFile("TestLucas.csv", colMaxValues);

    printf("Arquivo FpgaEditCnn.csv gerado corretamente. \n");
    return 0;
}
