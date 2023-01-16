from collections import deque

def bfs(start, visited, graph):
    queue = deque([start])
    visited[start] = 1
    
    while queue:
        v = queue.popleft()
        print(v)
        for node in graph[v]:
            if not visited[node]:
                queue.append(node)
                visited[node] = 1


graph = [
    [], 
    [2, 3, 8],
    [1, 7],
    [1, 4, 5],
    [3, 5],
    [3, 4],
    [7],
    [2, 6, 8],
    [1, 7]
]

visited = [0]*len(graph)

bfs(1, visited, graph)