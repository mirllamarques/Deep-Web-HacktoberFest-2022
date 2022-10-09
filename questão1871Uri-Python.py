# -*- coding: utf-8 -*-
while True:
  x=input().split()
  a=int(x[0])
  b=int(x[1])
  soma=a+b
  if a and b !=0:
    soma=str(soma)
    resultado=soma.replace('0',"")
    print (resultado)
  else:
    break
