numeros = input().split(" ")
numero1 = int(numeros[0])
numero2 = int(numeros[1])
resposta = ""

if (numero1 % numero2 == 0 or numero2 % numero1 ==0):
    resposta = "Sao Multiplos"
else:
    resposta = "Nao sao Multiplos"
    
print(resposta)