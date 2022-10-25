#Calcula a área de triângulos repetidamente até que seja inserido um valor menor que 1

print("Início do programa.")

base = 0
altura = 0

while True:
    base = float(input("Insira o comprimento da base: "))
    if base < 1:
        print("Fim do programa!")
        break
    altura = float(input("Insira o comprimento da altura: "))
    if altura < 1:
        print("Fim do programa!")
        break
    area = (base*altura)/2
    print("Área: %.3f" %area)