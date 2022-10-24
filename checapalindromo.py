#Algoritmo que checa se um número é palíndromo

while True:
    value = int(input("Informe um inteiro positivo: "))
    if value < 1: break

    temp = str(value)
    if temp == temp[::-1]:
        print(f"O número {temp} é um palíndromo!")
    else:
        print(f"O número {temp} não é um palíndromo!")
