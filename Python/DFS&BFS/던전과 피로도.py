visited = []
N = 0
answer = 0

def dfs(k, dunjeons, cnt):
    global answer
    if cnt > answer:
        answer = cnt
        
    for i in range(N):
        if not visited[i] and k >= dunjeons[i][0]:
            visited[i] = 1
            dfs(k - dunjeons[i][1], dunjeons, cnt+1)
            visited[i] = 0

def solution(k, dungeons):
    global visited, N
    N = len(dungeons)
    visited = [0]*N
    dfs(k, dungeons, 0)
    return answer
