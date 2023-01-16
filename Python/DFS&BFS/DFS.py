def dfs(node, graph, visited):
    visited[node] = 1
    print(node)
    for i in graph[node]:
        if not visited[i]:
            dfs(i, graph, visited)

graph = [
    [], 
    [2, 3, 4], 
    [3, 4], 
    [1], 
    [1, 2]
]

visited = [0]*(len(graph))

dfs(1, graph, visited)
