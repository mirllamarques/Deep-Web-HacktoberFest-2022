abc=input().split()
n1=int(abc[0])
n2=int(abc[1])
n3=float(abc[2])
MaiorAB=(n1+n2+abs(n1-n2))/2
MaiorABC=(MaiorAB+n3+abs(MaiorAB-n3))/2
print('%d eh o maior'%(MaiorABC))
