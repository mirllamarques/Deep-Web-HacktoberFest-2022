#include <iostream>
#include <string>

class Tabuleiro{
    int celulas[9][9];
    
    bool isValid(){
        for(unsigned i = 0; i < 9; i++){
            for(unsigned j = 0; j < 9; j++){
                if(celulas[i][j] != 0){
                    for(unsigned k = 0; k < 9; k++){
                        if(celulas[i][j] == celulas[i][k] && j != k){
                            return false;
                        }
                        if(celulas[i][j] == celulas[k][j] && i != k){
                            return false;
                        }
                    }
                    for(unsigned x = 0; x < 9; x++){
                        for(unsigned y = 0; y < 9; y ++){
                            if(x/3 == i/3 && y/3 == j/3){
                                if(celulas[i][j] == celulas[x][y] && x!=i && y!=j)
                                    return false;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public:
        Tabuleiro(std::string entrada){
            for(unsigned i = 0; i < 9; i++){
                for(unsigned j = 0; j < 9; j++){
                    celulas[i][j] = entrada[9*i + j] - 48;
                    if(celulas[i][j] < 0 || celulas[i][j] > 9)
                        celulas[i][j] = 0;
                }
            }
            std::cout<<isValid()<<std::endl;
        }

        void print(){
            for(unsigned i = 0; i < 9; i++){
                for(unsigned j = 0; j < 9; j++){
                    std::cout<<celulas[i][j]<<" ";
                    if(j %3 == 2)
                        std::cout<<"| ";
                }
                std::cout<<std::endl;
                if(i%3 == 2){
                    std::cout<<"-----------------------"<<std::endl;
                }
            }
        }
};

int main(){
    std::string entrada;
    std::cin>>entrada;
    Tabuleiro x(entrada);
    x.print();

}