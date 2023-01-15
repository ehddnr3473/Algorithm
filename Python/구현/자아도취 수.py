"""
어떤 자리 수 k가 주어졌을 때 각 자릿수의 k 제곱의 합이 원래 수가 되는 수를 자아도취 수라고 합니다. 예를 들어 153은 세 자리 자아도취 수입니다.
153 = 1³ + 5³ + 3³ = 1 + 125 + 27
"""

def power(base, exponent):
    val = 1
    for i in range(exponent):
        val *= base
    return val

def solution(k):
    answer = []
    bound = power(10, k) # 몇자리 수인가? -> bound: 1000
    for i in range(bound // 10, bound): # range(100, 1000)
        current = i
        calculated = 0
        while current != 0:
            calculated += power(current%10, k) # calculated에 뭔가 처리를 해주고
            current //= 10 # current 0까지 감소
        if calculated == i:
            answer.append(i)
    return answer

# 아래는 테스트케이스 출력을 해보기 위한 코드입니다.
k = 3
ret = solution(k)

# [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret, "입니다.")