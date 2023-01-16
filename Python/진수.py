number = 8
print(bin(number))
print(int(0b1000))
print(format(number, 'b'))
print(format(number, '#b'))
print(oct(number))
number = 11
print(hex(number))


numbers = [9, 20, 28, 18, 11]

for i in numbers:
    row = format(i, 'b')
    print(row)