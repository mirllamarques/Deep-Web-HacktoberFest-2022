segundos = int(input())

hora = segundos // 3600
minutos = (segundos % 3600) // 60
segundo = (segundos % 3600) % 60

print('{}:{}:{}'.format(hora,minutos,segundo))