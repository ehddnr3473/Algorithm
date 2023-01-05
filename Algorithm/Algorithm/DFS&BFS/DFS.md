# 깊이 우선 탐색 알고리즘, DFS
-  스택 자료구조를 기반으로 작동함.
-  탐색을 수행함에 있어서 데이터의 개수가 N개인 경우, O(N)의 시간이 소요됨.
-  실제로 스택을 쓰지 않아도 되며, 구현시 재귀 함수를 사용했을 때, 매우 간결함.

# DFS 예제
``` swift
// DFS 함수
func dfs(_ node: Int) {
    visited[node] = true
    print(node)
    
    for linkedNode in graph[node] {
        if !visited[linkedNode] {
            dfs(linkedNode)
        }
    }
}

// 각 노드가 연결된 정보를 2차원 배열로 표현
let graph = [
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

// 각 노드가 방문된 정보
var visited: [Bool] = Array(repeating: false, count: graph.count)

// 호출
dfs(1)

// Prints "1 2 7 6 8 3 4 5"

```
