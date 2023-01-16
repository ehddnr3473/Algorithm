# replace()
my = "Hello world"
my = my.replace('Hello', 'Good')
print(my)

# 문자열 슬라이싱을 이용해서 문자열 뒤집기
"""
문자열[:]을 하면 문자열[시작:끝]과 같으며, 
이것은 문자열을 앞에서부터 하나씩 슬라이싱해서 새로운 문자열을 만드는 것.

문자열[시작:끝:규칙]으로 세 번째 숫자가 들어갈 수 있는데, 이때의 규칙은 슬라이싱을 하는 규칙.
1이 들어가는 것이 default. 1이 들어가면 문자열을 앞에서부터 하나씩 잘라서 새로운 문자열을 만드는 것.

2가 들어가게 되면 앞에서부터 한 칸씩 띄워서 2씩 잘라주어 새로운 문자열을 만드는 것.
인덱스를 기준으로, [0], [2], [4] ... 이런 식으로 문자열을 자름.

이 규칙에 -1을 넣어서 뒤에서부터 잘라서 문자열을 뒤집을 수 있음(구현 - 숫자 뒤집기 참고).
"""

hello1 = "Hello World!!!"

hello2 = hello1[::1]
hello3 = hello1[::2]
hello4 = hello1[::-1]
hello5 = hello1[::-2]

print(hello1)
print(hello2)
print(hello3)
print(hello4)
print(hello5)

# rjust, ljust
# 오른쪽(rjust), 왼쪽(ljust) 정렬, 공백을 매워줄 문자를 넣어줌.
myString = "777"

rjust_string = myString.rjust(5, '0')
print(rjust_string)
ljust_string = myString.ljust(8, 'd')
print(ljust_string)

# zfill
# 0을 왼쪽에 채워줌.
myString = "3473"

zfill_string = myString.zfill(10)
print(zfill_string)