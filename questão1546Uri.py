# -*- coding: utf-8 -*-
x=int(input())
while x!=0:
  try:
    for i in range(x):
      y=int(input())
      for j in range(y):
        n=int(input())
        if n==1:
          print('Rolien')
        elif n==2:
          print('Naej')
        elif n==3:
          print('Elehcim')
        elif n==4:
          print('Odranoel')
    x=x-1      
  except EOFError:
    break
