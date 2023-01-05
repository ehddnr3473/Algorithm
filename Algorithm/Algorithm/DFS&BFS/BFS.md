# 너비 우선 탐색 알고리즘, BFS
- 큐 자료구조를 기반을 작동함.
- 인접한 노드를 반복적으로 큐에 삽입하도록 작성하여, 선입선출 방식으로 가까운 노드부터 탐색 진행
- O(N)의 시간 소요.
- 일반적인 경우, 실제 수행 시간은 DFS보다 좋은 편.

# BFS 예제
```swift
func bfs(_ node: Int) {
    var queue = [node]
    // 현재 노드를 방문 처리
    visited[node] = true
    
    // 큐가 고갈될 때까지 반복
    while !queue.isEmpty {
        // 하나의 노드를 뽑아서 출력
        let v = queue.removeFirst()
        print(v)
        
        // 해당 노드와 연결된, 아직 방문하지 않은 노드를 큐에 삽입하고 방문처리.
        for linkedNode in graph[v] {
            if !visited[linkedNode] {
                queue.append(linkedNode)
                visited[linkedNode] = true
            }
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

// 각 노득 방문된 정보를 1차원 배열로 표현
var visited: [Bool] = Array(repeating: false, count: graph.count)

bfs(1)

// Prints "1 2 3 8 7 4 5 6"
```
