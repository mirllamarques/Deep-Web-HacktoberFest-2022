#include <iostream>
#include <string>

class Tabuleiro{
    int celulas[9][9];

    public:
        Tabuleiro(std::string entrada){
            for(unsigned i = 0; i < 9; i++){
                for(unsigned j = 0; j < 9; j++){
                    celulas[i][j] = entrada[9*i + j];
                }
            }
        }
        
        void print(){
            for(unsigned i = 0; i < 9; i++){
                for(unsigned j = 0; j < 9; j++){
                    std::cout<<celulas[i][j]<<" ";
                    if(j %3 == 0)
                        std::cout<<"| ";
                }
                std::cout<<std::endl;
            }
        }
};

int main(){
    std::string entrada;
    std::cin>>entrada;
    Tabuleiro x(entrada);


}