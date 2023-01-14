# 소용돌이 수
def solution(n):
    answer = 0
    array = [[0] * n for _ in range(n)]
    dir = 0 # 방향 0 1 2 3 0 1 2 3 ...
    loop = n # 해당 방향으로 채우는 숫자 개수
    r, c = 0, -1
    dr = [0, 1, 0, -1]
    dc = [1, 0, -1, 0]
    num = 0
    while num < n*n:
        for _ in range(loop):
            r += dr[dir]
            c += dc[dir]
            num += 1
            array[r][c] = num
        dir = (dir + 1) % 4
        if dir % 2 : loop -= 1
    
    for x in range(n):
        answer += array[x][x]
    return answer

#The following is code to output testcase.
n1 = 3
ret1 = solution(n1)

#Press Run button to receive output. 
print("Solution: return value of the function is", ret1, ".")
    
n2 = 2
ret2 = solution(n2)

#Press Run button to receive output. 
print("Solution: return value of the function is", ret2, ".")