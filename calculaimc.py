#Calcula o IMC de alunos até a palavra Fim ser inserida.
while True:
    nome = input("Qual o nome do aluno? ")
    if nome.upper() == "FIM":
        print("Fim do programa.")
        break
    peso = float(input("Qual o peso do aluno? "))
    altura = float(input("Qual a altura do aluno?"))
    imc = peso/(altura**2)
    print("IMC = %.2f" %imc)