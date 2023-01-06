//
//  미로탈출.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

// 이코테 152P 미로 탈출
// BFS
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (inputData[0], inputData[1])
var graph = [[Int]]()
var queue = [(Int, Int)]()
let dx = [-1, 0, 0, 1]
let dy = [0, -1, 1, 0]

func bfs() -> Int {
    // 큐가 고갈될 때까지 반복
    while !queue.isEmpty {
        let position = queue.removeFirst()
        
        for index in 0..<4 {
            let nx = position.0 + dx[index]
            let ny = position.1 + dy[index]
            
            // 이탈한 경우 무시
            if nx < 0 || nx >= n || ny < 0 || ny >= m {
                continue
            }
            
            // 0인 경우 무시
            if graph[nx][ny] == 0 {
                continue
            }
            
            // 1인 경우
            // 1. 그래프에서 다음 경로에 현재 최단 경로값 + 1 을 저장
            // 2. 큐에 삽입
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[position.0][position.1] + 1
                queue.append((nx, ny))
            }
        }
    }
    
    return graph[n-1][m-1]
}

func solution() -> Int {
    // graph 채우기
    for _ in 0..<n {
        graph.append(readLine()!.map { Int(String($0))! })
    }
    
    queue.append((0, 0))
    return bfs()
}

//print(solution())

