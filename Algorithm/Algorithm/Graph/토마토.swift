//
//  토마토.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

// 백준 7576 토마토
import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let (m, n) = (inputData[0], inputData[1])

var graph = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(input)
}

func solution() -> Int {
    var result = 0
    var index = 0
    let dx = [0, -1, 0, 1]
    let dy = [-1, 0, 1, 0]
    var queue = [(Int, Int)]()
    
    for x in 0..<n {
        for y in 0..<m {
            if graph[x][y] == 1 {
                queue.append((x, y))
            }
        }
    }
    
    while index < queue.count {
        result += 1
        
        for _ in 0..<queue.count - index {
            let tomato = queue[index]
            index += 1
            for index in 0...3 {
                let nx = tomato.0 + dx[index]
                let ny = tomato.1 + dy[index]
                
                guard nx > -1 && nx < graph.count,
                        ny > -1 && ny < graph[nx].count,
                        graph[nx][ny] == 0 else { continue }
                queue.append((nx, ny))
                graph[nx][ny] = 1
            }
        }
    }
    
    for x in 0..<n {
        for y in 0..<m {
            if graph[x][y] == 0 {
                return -1
            }
        }
    }
    return result - 1
}

print(solution())
