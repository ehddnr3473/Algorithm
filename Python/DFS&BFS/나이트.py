# 나이트가 이동할 수 있는 구역의 수
def solution(pos):
    answer = 0
    x = pos_dict[pos[0]]
    y = int(pos[1])
    steps = [[-2, 1], [-2, -1], [2, 1], [2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
    
    for step in steps:
        dx = x + step[0]
        dy = y + step[1]
        
        if dx < 1 or dx > 8 or dy < 1 or dy > 8:
            continue
        else:
            answer += 1
    
    return answer

pos_dict = {'A':1, 'B':2, 'C':3, 'D':4, 'E':5, 'F':6, 'G':7, 'H':8}
pos = "A7"
ret = solution(pos)

print("Solution: return value of the function is", ret, ".")