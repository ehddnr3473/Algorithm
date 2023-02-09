//
//  DFS와 BFS.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 1260번 DFS와 BFS
// 양방향 그래프
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, start) = (inputData[0], inputData[1], inputData[2])
var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let inputEdge = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let (start, end) = (inputEdge[0], inputEdge[1])
    graph[start].append(end)
    graph[end].append(start)
}

for i in 1...n {
    graph[i].sort(by: <)
}


dfs()
bfs()

func dfs() {
    var visited = Array(repeating: false, count: n + 1)
    searchDfs(&visited, start)
    print("")
}

func searchDfs(_ visited: inout [Bool], _ node: Int) {
    visited[node] = true
    print(node, terminator: " ")
    
    for linkedNode in graph[node] {
        if !visited[linkedNode] {
            searchDfs(&visited, linkedNode)
        }
    }
}

func bfs() {
    var visited = Array(repeating: false, count: n + 1)
    searchBfs(&visited, start)
}

func searchBfs(_ visited: inout [Bool], _ node: Int) {
    visited[node] = true
    var queue = [Int]()
    queue.append(node)
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node, terminator: " ")
        
        for linkedNode in graph[node] {
            if !visited[linkedNode] {
                queue.append(linkedNode)
                visited[linkedNode] = true
            }
        }
    }
    print("")
}
