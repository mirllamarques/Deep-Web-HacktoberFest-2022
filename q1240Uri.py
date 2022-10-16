N=int(input())
quantidade_de_teste=0
while quantidade_de_teste<N:
    quantidade_de_teste+=1
    A,B=input().split()
    if B==A:
        print("encaixa")
    elif len(B) > len(A):
        print("nao encaixa")
    elif A[-len(B):]==B:
        print("encaixa")
    else:
        print("nao encaixa")
