//
//  DFS.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

import Foundation

struct DFS {
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
    
    mutating private func dfs(_ node: Int) {
        visited[node] = true
        print(node)
        
        for linkedNode in graph[node] {
            if !visited[linkedNode] {
                dfs(linkedNode)
            }
        }
    }
}
