sum = 0
limite = int(input())
while True:
    n = int(input('Informe um número: '))
    sum += n
    if sum >= limite: break
print('Soma = ',sum)