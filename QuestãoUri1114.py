# -- coding: utf-8 --
digite_a_senha=int(input())
senha=2002
while digite_a_senha != senha or digite_a_senha == senha :
    if digite_a_senha != senha :
        print("Senha Invalida")
        digite_a_senha=int(input())
    if digite_a_senha == senha:
        print("Acesso Permitido")
        break
