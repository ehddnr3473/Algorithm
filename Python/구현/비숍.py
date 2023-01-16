# 비숍(들)을 피해 체스판에 놓을 수 있는 구역의 수 구하기
def solution(bishops):
    dx = [-1, -1, 1, 1]
    dy = [1, -1, -1, 1]
    isEnabled = [[1]*9 for _ in range(9)]
    
    for bishop in bishops:
        bishop_x = ord(bishop[0]) - ord('A') + 1
        bishop_y = int(bishop[1])
        isEnabled[bishop_x][bishop_y] = 0
        
        for i in range(4):
            nx = bishop_x + dx[i]
            ny = bishop_y + dy[i]
            
            while True:
                if nx < 1 or nx > 8 or ny < 1 or ny > 8:
                    break
                isEnabled[nx][ny] = 0
                nx = nx + dx[i]
                ny = ny + dy[i]
    
    answer = 0
    for i in range(1, 9):
        for j in range(1, 9):
            if isEnabled[i][j] == True:
                answer += 1
    return answer

print(solution(["D5", "E8", "G2"]))
print(solution(["D5"]))