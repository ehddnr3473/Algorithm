# 자연수 num에 1을 더한 수를 return
# 예시 num: 9949999     return: 9951111

def solution(num):
    answer = 0
    num = str(num+1)
    num = num.replace('0', '1')
    answer = int(num)
    return answer

num = 9949999
ret = solution(num)

print("Solution: return value of the function is", ret, ".")