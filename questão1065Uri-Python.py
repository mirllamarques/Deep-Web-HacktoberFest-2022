pares = 0
for i in range(0, 5, 1):
    num = int(input())
    if (num % 2 == 0):
        pares += 1

print(f"{pares} valores pares")