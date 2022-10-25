#verifica se os números inseridos são primos, se um número inserido for múltiplo de um número X previamente informado, o programa encerra.

x = int(input("Informe um valor inteiro positivo para X: "))
multiple = False

while True:
    num = int(input("Informe um número inteiro positivo: "))
    if num % x == 0:
        multiple = True
    prime = True
    for i in range (2, num):
        if num % i == 0 and num != i:
            prime = False

    if num == 1:
        prime = False
        multiple = False

    if multiple == True and prime == False:
        print(f"O número {num} não é primo!")
        print(f"Foi digitado um múltiplo de {x}!")
        break
    
    if multiple == True and prime == True:
        print(f"O número {num} é primo!")
        print(f"Foi digitado um múltiplo de {x}!")
        break
    elif multiple == False and prime == True:
        print(f"O número {num} é primo!")
    elif multiple == False and prime == False:
        print(f"O número {num} não é primo!")
