//
//  BFS.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

import Foundation

struct BFS {
    private let graph = [
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

    private var visited: [Bool] = [false, false, false, false, false, false, false, false, false]
    
    mutating private func bfs(_ node: Int) {
        var queue = [node]
        visited[node] = true
        
        while !queue.isEmpty {
            let v = queue.removeFirst()
            
            print(v)
            
            for linkedNode in graph[v] {
                if !visited[linkedNode] {
                    queue.append(linkedNode)
                    visited[linkedNode] = true
                }
            }
        }
    }
}
