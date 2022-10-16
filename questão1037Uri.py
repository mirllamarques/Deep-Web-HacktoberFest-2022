numero=float(input())
if numero >=float(0) and numero <=float(25):
    print("Intervalo [0,25]")
if numero >float(25) and numero <=float(50) :
    print("Intervalo (25,50]")
if numero >float(50) and numero <=float(75):
    print("Intervalo (50,75]")
if numero >float(75) and numero <=float(100):
    print("Intervalo (75,100]")
if numero < float(0):
  print("Fora de intervalo")
if numero > float(100):
  print("Fora de intervalo")
