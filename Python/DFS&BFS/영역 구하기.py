# 백준 2583
# https://www.acmicpc.net/problem/2583
'''
1. 직사각형 graph로 표현 - (n, m)과 (x, y)는 내 임의로 지정할 것. 하기 나름.
2. dfs/bfs로 채워가며 카운트
    - 전체 카운트: 나누어지는 영역
    - 개별 카운트: 개별 영역의 넓이
'''
import sys

def solution():
    global graph
    area_count = 0 # 나누어지는 영역
    areas = [] # 개별 영역의 넓이
    
    graph = [[0 for _ in range(m)] for _ in range(n)]
    for info in map_info:
        min_x = info[0]
        min_y = info[1]
        max_x = info[2]
        max_y = info[3]
        for x in range(n):
            for y in range(m):
                if min_x<=x<max_x and min_y<=y<max_y:
                    graph[x][y] = 1
    
    # print(graph)
    
    for x in range(n):
        for y in range(m):
            if not graph[x][y]:
                area_count += 1
                areas.append(dfs(0, x, y))
    
    return area_count, areas
    

def dfs(area, x, y):
    area += 1
    graph[x][y] = 1
    for i in range(4):
        nx = x + dx[i]
        ny = y + dy[i]
        if (nx >= 0 and nx <= n-1 and ny >= 0 and ny <= m-1) and not graph[nx][ny]:
            area = dfs(area, nx, ny)
    return area

sys.setrecursionlimit(10000)
inputData = list(map(int, input().split()))
m, n, k = inputData[0], inputData[1], inputData[2]

map_info = []
for _ in range(k):
    map_info.append(list(map(int, input().split())))

dx = [0, -1, 0, 1]
dy = [1, 0, -1, 0]

# print(map_info)

area_count, areas = solution()
areas.sort()
print(area_count)
print(' '.join(map(str, areas)))