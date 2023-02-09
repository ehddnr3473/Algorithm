//
//  유기농 배추.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

// 백준 1012번 유기농 배추
// DFS
import Foundation

func solution() -> Int {
    var result = 0
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }

    let (m, n, k) = (inputData[0], inputData[1], inputData[2])

    var graph = Array(repeating: Array(repeating: 0, count: m), count: n)

    for _ in 0..<k {
        let edge = readLine()!.components(separatedBy: " ").map { Int($0)! }
        let (x, y) = (edge[0], edge[1])
        graph[y][x] = 1
    }
    
    for x in 0..<n {
        for y in 0..<m {
            if graph[x][y] == 1 {
                dfs(&graph, x, y)
                result += 1
            }
        }
    }
    
    return result
}

func dfs(_ graph: inout [[Int]], _ x: Int, _ y: Int) {
    graph[x][y] = 0
    
    for index in 0...3 {
        let nx = x + dx[index]
        let ny = y + dy[index]
        
        if nx > -1 && nx < graph.count,
            ny > -1 && ny < graph[nx].count,
            graph[nx][ny] == 1 {
            dfs(&graph, nx, ny)
        }
    }
}

let numberOfTestCases = Int(readLine()!)!
let dx = [0, -1, 0, 1]
let dy = [-1, 0, 1, 0]
var results = [Int]()

for _ in 0..<numberOfTestCases {
    results.append(solution())
}

for result in results {
    print(result)
}
