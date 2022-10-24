# -*- coding: utf-8 -*-

control=1
soma=0
while control<=3:
    nota=float(input("Informe a nota {} do aluno: ".format(control)))
    if nota >= 0 and nota <= 10:
        soma += nota
        control += 1
    else:
        print("Nota {} inválida!".format(control))
print("Média das notas = {:.1f}".format(soma/3))