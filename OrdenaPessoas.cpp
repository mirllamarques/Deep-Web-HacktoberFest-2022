#include <iostream>
#include <string>

using namespace std;

struct Pessoa {
    string nome;
    int idade;
};

void leituraPessoas(int numero, Pessoa pessoa[]){

    int auxIdade;
    string auxNome;

    for (int i = 0; i < numero; i++){
        cout << "Qual é o nome da " << i+1 << "º pessoa?" << endl;
        cin >> pessoa[i].nome;
        cout << "Qual é a idade de "<< pessoa[i].nome << "?" << endl;
        cin >> pessoa[i].idade;
    }
    for (int j = 0; j < numero - 1; j++){
        for (int i = 0; i < numero - 1; i++){
            if (pessoa[i].idade > pessoa[i+1].idade){
                auxIdade = pessoa[i].idade;
                auxNome = pessoa[i].nome;
                pessoa[i].idade = pessoa[i+1].idade;
                pessoa[i].nome = pessoa[i+1].nome;
                pessoa[i+1].idade = auxIdade;
                pessoa[i+1].nome = auxNome;
            }
        }
    }
}

int main(){
    setlocale(LC_ALL,"Portuguese");

    int numero, posicao = 0;

    cout << "Quantas pessoas serão adicionadas? " << endl;
        cin >> numero;

    Pessoa pessoa[numero];

    leituraPessoas(numero, pessoa);

    if (numero >1){
        cout << "Lista ordenada de pessoas, por idade: " << endl;
        for (int i = 0; i < numero; i++){
            cout << pessoa[i].nome << " possui " << pessoa[i].idade << " anos."<< endl;
        }
    }
    if (numero == 1){
        cout << "Você só forneceu uma pessoa: " << pessoa[numero-1].nome << " que possui " << pessoa[numero-1].idade << " anos.";
    }

    return 0;
};
