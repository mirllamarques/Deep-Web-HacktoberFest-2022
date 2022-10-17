maior = 0
posicao = 0
for i in range(1, 101, 1):
    num = int(input())
    if (i == 0):
        maior = num
    else:
        if (num >= maior):
            maior = num
            posicao = i

print(maior)
print(posicao)