#Calcula a sequência S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + n/m, em que n é uma entrada do usuário e a quantidade de frações da sequência a ser exibida, e m é equivalente a o valor n anterior+2.

n = int(input("Informe um número inteiro para n: \n"))
m = 0 # valor 1
o = 0 # valor 2
soma = 0
string = "S = "
div = 0
if n == 1:
    print("S = {}/1 \nS = 1.0".format(n))
    exit(0)
elif n < 1:
    exit(0)
else:
    for i in range(n):
        
        if i == 0:   
            m = 1
            o = 1  
            div = m/o
            soma += div
        elif i > 0 and i+1 < n:
            m = i+1
            o = m + i
            div = m/o
            soma += div
        else:
            m = i+1
            o = m + i
            div = m/o
            soma += div
        if string != "" and i+1 < n:
            string = string + " {}/{} + ".format(i+1, o)
        elif n == i+1:
            string = string + " {}/{} ".format(i+1, o)
print(string,"\n",soma)
