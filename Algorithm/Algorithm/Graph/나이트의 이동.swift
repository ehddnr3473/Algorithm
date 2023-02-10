//
//  나이트의 이동.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

// 백준 7562번 나이트의 이동
import Foundation

func solution() -> Int {
    let n = Int(readLine()!)!
    var graph = Array(repeating: Array(repeating: infinity, count: n), count: n)
    var queue = [(Int, Int)]()
    var index = 0
    var depth = 0
    let directions = [(-1, 2), (-2, 1), (-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2)]
    
    let source = readLine()!.split(separator: " ").map { Int($0)! }
    queue.append((source[0], source[1]))
    graph[source[0]][source[1]] = 0
    let destination = readLine()!.split(separator: " ").map { Int($0)! }
    
    while index < queue.count {
        depth += 1
        for _ in 0..<queue.count - index {
            let position = queue[index]
            index += 1
            
            for direction in directions {
                let nx = position.0 + direction.0
                let ny = position.1 + direction.1
                if nx > -1 && nx < graph.count,
                   ny > -1 && ny < graph[nx].count, graph[nx][ny] == infinity {
                    queue.append((nx, ny))
                    graph[nx][ny] = depth
                }
            }
        }
    }
    
    return graph[destination[0]][destination[1]]
}

let infinity = Int(1e9)
let numberOfTestcases = Int(readLine()!)!
var results = [Int]()

for _ in 0..<numberOfTestcases {
    results.append(solution())
}

results.forEach {
    print($0)
}
