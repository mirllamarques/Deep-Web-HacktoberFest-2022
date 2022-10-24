nome = input()
salario = float(input())
vendas = float(input())

total = salario + (15 * vendas / 100)

print(f'TOTAL = R$ {total:.2f}')