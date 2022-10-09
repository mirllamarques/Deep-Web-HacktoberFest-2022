while True:
  n=input()
  if n=="0":
    break
  A,B,C=n.split()
  A,B,C=int(A),int(B),int(C)
  x=((A*B))/-(A-C)
  c=int((x+B)*A)
  if c==1:
    print("1 pagina")
  else:
    print("%d paginas"%abs(c))
