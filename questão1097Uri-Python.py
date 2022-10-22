num: int = 7

for x in range(1,10,2):
    for y in range(num, num - 3, -1):
        print(f'I={x} J={y}')
    num += 2