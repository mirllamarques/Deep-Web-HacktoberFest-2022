tam_1 = float(input("Informe o tamanho do aluno 1 (m): "))
cresc_1 = float(input("Informe a taxa de crescimento do aluno 1 (cm/ano): "))
tam_2 = float(input("Informe o tamanho do aluno 2 (m): "))
cresc_2 = float(input("Informe a taxa de crescimento do aluno 2(cm/ano): "))

cont = 0

while tam_1 < tam_2:
    cont+= 1
    tam_1 += (cresc_1/100)
    tam_2 += (cresc_2/100)

print(f"Aluno 1 será maior que o aluno 2 em {cont} anos!")
