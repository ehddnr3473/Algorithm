//
//  바이러스.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 2606번 바이러스
import Foundation

func bfs(_ start: Int) -> Int {
    var result = 0
    visited[start] = true
    var queue = [Int]()
    queue.append(start)
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        result += 1
        
        for linkedNode in graph[node] {
            if !visited[linkedNode] {
                queue.append(linkedNode)
                visited[linkedNode] = true
            }
        }
    }
    
    return result-1
}

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n + 1)

for _ in 0..<m {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let (start, end) = (inputData[0], inputData[1])
    
    graph[start].append(end)
    graph[end].append(start)
}

var visited = Array(repeating: false, count: n + 1)
let start = 1

print(bfs(start))
