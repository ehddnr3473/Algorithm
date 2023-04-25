//
//  연구소.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/25.
//

// 백준 14502번 연구소
// https://www.acmicpc.net/problem/14502
import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let (n, m) = (inputData[0], inputData[1])

var graph = [[Int]]()
var result = 0

/*
 0: 빈칸
 1: 벽
 2: 바이러스
 */
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(input)
}

func buildWall(count: Int) {
    if count == 3 {
        bfs()
        return
    }
    
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 0 {
                graph[i][j] = 1
                buildWall(count: count + 1)
                graph[i][j] = 0
            }
        }
    }
}

func bfs() {
    var q = [(Int, Int)]()
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    // 초기 바이러스
    for row in 0..<n {
        for col in 0..<m {
            if graph[row][col] == 2 {
                q.append((row, col))
                visited[row][col] = true
            }
        }
    }
    
    while !q.isEmpty {
        let (x, y) = q.removeFirst()
        
        for (dx, dy) in [(0, 1), (-1, 0), (0, -1), (1, 0)] {
            let nx = x + dx
            let ny = y + dy
            
            if nx < 0 || nx >= n || ny < 0 || ny >= m { continue }
            
            if graph[nx][ny] == 0 && !visited[nx][ny] {
                visited[nx][ny] = true
                q.append((nx, ny))
            }
        }
    }
    
    var count = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 0 && !visited[i][j] {
                count += 1
            }
        }
    }
    
    result = max(result, count)
}

buildWall(count: 0)

print(result)
