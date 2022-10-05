//
//  Graph02.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/05.
//

// 인접 행렬
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, r) = (inputData[0], inputData[1], inputData[2])
var edges = [[Int]]()
var visited = Array(repeating: false, count: n)
var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
var queue = [Int]()
var result = Array(repeating: 0, count: 5)
var count = 1

func solution() {
    for _ in 0..<m {
        edges.append(Array(readLine()!.components(separatedBy: " ").map { Int($0)! }))
    }

    for edge in edges {
        matrix[edge[0]-1][edge[1]-1] = 1
        matrix[edge[1]-1][edge[0]-1] = 1
    }
    bfs(r-1)
}

func bfs(_ start: Int) {
    queue.append(start)
    visited[start] = true
    result[start] = count
    count += 1

    while !queue.isEmpty {
        let node = queue.removeFirst()

        for index in matrix[node].indices {
            if matrix[node][index] == 1 && !visited[index] {
                visited[index] = true
                queue.append(index)
                result[index] = count
                count += 1
            }
        }
    }
}
