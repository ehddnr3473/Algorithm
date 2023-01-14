# 5C2 조합
# j를 기준으로, 이전의 i는 볼 필요가 없음.
for i in range(4):
    for j in range(i+1, 5):
        print(i, j)
        
# 5C3 조합
for i in range(3): # 뒤에서 2개 더 뽑아야 함. 0, 1, 2 인덱스만 사용될 수 있음.
    for j in range(i+1, 4): # 뒤에서 1개 더 뽑아야 함.
        for k in range(j+1, 5):
            print(i, j, k, sep=', ', end='   ')
            
# 두 개의 벽을 두고 나머지 벽을 허물었을 때, 가장 넓이가 큰 케이스를 구하는 문제
def solution(walls):
    answer = 0
    for i in range(len(walls)):
        for j in range(i+1, len(walls)):
            area = 0
            if walls[i][1] < walls[j][1]:
                area = walls[i][1] * (walls[j][0] - walls[i][0])
            else:
                area = walls[j][1] * (walls[j][0] - walls[i][0])
            if answer < area:
                answer = area
    return answer

# 각 벽의 x, y 좌표
walls = [[1, 4], [2, 6], [3, 5], [5, 3], [6, 2]]
ret = solution(walls)
print("가장 큰 넓이:", ret)