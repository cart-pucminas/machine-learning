/*
Autor: Juma Helena Costa de Miranda
Entrada: Exemplo.txt
Saida: Control.mif

O programa lê uma lista de palavras separadas por "," onde cada palavra na linha 
é um item e cada linha é uma transação destes itens e gera um arquivo .MIF, padrão utilizado no Quartus e alguns outros programas.

*/

#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <cstring>
#include <vector>

using namespace std;

vector<string> listaPalavras;
vector<int> listaPalavraLinha;
vector<int> vetorPalavraLinha;
vector<int> matriz;
vector<int> matrizInversa;
vector<string> listaPalavrasUnicas;
string stringGlobal;
int qtLinhas = 1;



void vetor_animal (){
   vector<string> animal_vec;
   animal_vec.push_back("Elephant");
   animal_vec.push_back("Lion");
   animal_vec.push_back("Deer");
   animal_vec.push_back("Tiger");
   for(int i = 0; i<animal_vec.size(); i++) {
      cout << animal_vec[i] << endl;
   }
}

void imprimeLista (){
    for (int i = 0; i<listaPalavras.size(); i++){
        cout << listaPalavraLinha[i] << ":" << listaPalavras[i] <<";";
        if(listaPalavraLinha[i+1] > listaPalavraLinha[i]){
            cout << endl;
        }
    }
}

void imprimeListaUnica (){
    cout << endl << endl << "***IMPRESSAO DA LISTA DE UNICOS***" << endl;
    for (int i = 0; i<listaPalavrasUnicas.size(); i++){
        cout << listaPalavrasUnicas[i] << "; ";
    }
    cout << endl << endl;
}

bool existePalavra(){
    bool existe = false;
    for (int i = 0; i<listaPalavrasUnicas.size(); i++){
        if (strcmp(stringGlobal.c_str(),listaPalavrasUnicas[i].c_str()) == 0) {
            //cout << "achou " << stringGlobal << " = " << listaPalavrasUnicas[i] << " na posicao " << i << endl; 
            existe = true;
        }
    }
    return existe;
}

void listaUnicos (){
    for (int i = 0; i<listaPalavras.size(); i++){
        //cout << listaPalavraLinha[i] << ":" << listaPalavras[i] <<";";
        stringGlobal = listaPalavras[i];
        if(existePalavra()){
            //cout << endl << stringGlobal << " existe!!" << endl;
        }else{
            listaPalavrasUnicas.push_back(stringGlobal);
            //cout << " insere na lista unica " << stringGlobal << endl;
        }
    }    
}

void geraVetorLinhas (){

    cout << endl << endl << "***POSICAO DAS PALAVRAS NAS LINHAS***";

    int ultimaLinha = listaPalavraLinha[1];
    int pos = 0;
    for (int i = 0; i<=listaPalavraLinha.size(); i++){
        if(listaPalavraLinha[i] > ultimaLinha){
            vetorPalavraLinha.push_back(i-1);
            ultimaLinha = listaPalavraLinha[i];
            pos++;
        }
    }

    for (int i = 0; i< vetorPalavraLinha.size(); i++){
        cout << endl << "linha " << i+1 << " ate posicao " << vetorPalavraLinha[i]+1 << " (" << listaPalavras[vetorPalavraLinha[i]] << ")";
    }    
}

void geraBinarios(){
    int pIni = 0;
    int pFim = vetorPalavraLinha[0];
    //cout << endl << "Sao " <<  vetorPalavraLinha.size() << " linhas" << endl;

    for (int l = 0; l < vetorPalavraLinha.size(); l++){
        for (int c = 0; c < listaPalavrasUnicas.size(); c++){
            int imprime = 0;
            //cout << listaPalavrasUnicas[c] << '\t';    
            for (int p = pIni; p <= pFim; p++){
                //cout << p;
                if (strcmp(listaPalavras[p].c_str(),listaPalavrasUnicas[c].c_str()) == 0) {
                    imprime = 1;
                }
            }
            //cout << imprime << '\t';
            matriz.push_back(imprime); //crio a lista de 0 e 1
        }
        //cout << " pIni " <<  pIni << " pFim " << pFim << endl;
        pIni = vetorPalavraLinha[l]+1;    //pois procuro apenas algumas posicoes da lista
        pFim = vetorPalavraLinha[l+1];   //até tal posicao da lista
        //cout << endl;
    }

    
}

void imprimeBinarios(){
    int pos = 0;
    int inverte = listaPalavrasUnicas.size()-1;
    cout << endl << endl << "***MATRIX ORIGINAL***" << endl;    
    for (int l = 0; l < vetorPalavraLinha.size(); l++){
        for (int c = 0; c < listaPalavrasUnicas.size(); c++){
            //cout << pos << "[" << matriz[pos] << "]";
            cout << matriz[pos] ;
            pos++;
        }
        cout << endl;
    }        
}

inverteMatrix(){
    int pos = 0;
    int inverte = listaPalavrasUnicas.size()-1;    
    for (int l = 0; l < vetorPalavraLinha.size(); l++){
        for (int c = 0; c < listaPalavrasUnicas.size(); c++){
            //cout << inverte-pos << "[" << matriz[inverte-pos] << "]";
            matrizInversa.push_back(matriz[inverte-pos]);
            pos++;
        }
        inverte = inverte + listaPalavrasUnicas.size() + listaPalavrasUnicas.size();
        //cout << endl;
    }
    
    cout << endl << endl << "***MATRIX INVERTIDA***" << endl;
    pos = 0;
    for (int l = 0; l < vetorPalavraLinha.size(); l++){
        for (int c = 0; c < listaPalavrasUnicas.size(); c++){
            //cout << pos << "[" << matriz[pos] << "]";
            cout << matrizInversa[pos] ;
            pos++;
        }
        cout << endl;
    }
}

imprimeMIF(){
    int pos = 0;
    ofstream saidaMIF;
    saidaMIF.open ("Control.mif");
    //saidaMIF << "Writing this to a file.\n";
    saidaMIF << "-- Lista Dinamica\n\n\n";
    saidaMIF << "\nWIDTH=" << listaPalavrasUnicas.size() << ";\n";
    saidaMIF << "DEPTH=" <<  vetorPalavraLinha.size() << ";\n";
    saidaMIF << "\nADDRESS_RADIX=UNS;\nDATA_RADIX=BIN;\n";
    saidaMIF << "\nCONTENT BEGIN\n";
    //cout << "WIDTH=" << unicosTamanho << ";" << endl;
    //cout << "DEPTH=" << qtLinhas << ";" << endl;
    //cout << endl << "ADDRESS_RADIX=UNS;" << endl <<"DATA_RADIX=BIN;" << endl;     
    //cout << endl << "CONTENT BEGIN" << endl;
    for (int l=0; l<vetorPalavraLinha.size(); l++ ){
        //cout << '\t' << l << "   :   "; 
        saidaMIF << '\t' << l << "   :   "; 
        for (int c=0; c<listaPalavrasUnicas.size(); c++){
            //cout << matrizInversa[pos] ;
            saidaMIF << matrizInversa[pos] ;
            pos++;
        }
        saidaMIF <<  ";\n";
    }
    saidaMIF << "END;";

    saidaMIF.close();
}

int main () {

    string linha;
    string palavra;
    ifstream arquivo ("Exemplo.txt");
    int espAux;

    if (arquivo.is_open()){

        cout << endl << endl << "***IMPRESSAO DE TODAS AS PALAVRAS SEPARADAS***" << endl;

        while (! arquivo.eof() ){
            int qtPos = 0;
            getline(arquivo,linha);
            espAux = 0;
            int l = 0;
            do {
                if (linha[l] == ',' or linha[l]== '\0'){
                    //cout << "de " << espAux << " a " << l-1 << ":"; 
                    palavra = linha.substr(espAux,l-espAux); //conta qual o local do espaço e entao tira via substr
                    listaPalavras.push_back(palavra);
                    listaPalavraLinha.push_back(qtLinhas);
                    cout << palavra << ";" << endl;
                    espAux = l+1;
                }
                //cout << l<<linha[l] << endl;
                l++;
            }
            while (linha[l-1]!='\0');
            qtLinhas++;
            
        }
        //cout << "fim ler" << endl;
        arquivo.close();
    }
    else cout << "Arquivo não pôde ser aberto!";

    //imprimeLista();   

    listaUnicos();
    geraVetorLinhas();
    imprimeListaUnica();
    geraBinarios();
    imprimeBinarios();
    inverteMatrix();
    imprimeMIF();



}


