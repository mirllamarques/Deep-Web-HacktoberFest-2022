soma = 0
qtd = 0
media = 0
while True:
    idade = int(input())
    if (idade < 0):
        break
    else:
        soma += idade
        qtd += 1

media = soma / qtd
print(f"{media:.2f}")