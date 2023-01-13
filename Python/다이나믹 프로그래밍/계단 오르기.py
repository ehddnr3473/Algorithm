# steps = [0, 1, 2, 4, 7]
# 가설: n일 때 n-1, n-2, n-3을 더한 것
# n = 5, 7+4+2 => 13

# n = 5
# 1 1 1 1 1
# 1 1 1 2
# 1 1 2 1
# 1 2 1 1
# 2 1 1 1
# 1 1 3
# 1 3 1
# 3 1 1
# 1 2 2
# 2 1 2
# 2 2 1
# 2 3
# 3 2

def solution(n):
    answer = 0
    steps = [0 for _ in range(n+1)]
    steps[1] = 1
    steps[2] = 2
    steps[3] = 4
    for i in range(4, n+1):
        # steps[i] = steps[i-1] + steps[i-2] + steps[i-3]
        steps[i] = sum(steps[i-3:i])
    answer = steps[n]
    return answer

n1 = 6
ret1 = solution(n1)
print("solution 함수의 반환 값은", ret1, "입니다. ")