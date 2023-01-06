//
//  음료수 얼려 먹기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

// 이코테 149P 음료수 얼려 먹기
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n ,m) = (inputData[0], inputData[1])
var graph = [[Int]]()
var result = 0

func dfs(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x > n-1 || y < 0 || y > m-1 {
        return false
    }
    
    if graph[x][y] == 0 {
        graph[x][y] = 1
        
        dfs(x-1, y)
        dfs(x, y-1)
        dfs(x+1, y)
        dfs(x, y+1)
        return true
    } else {
        return false
    }
}

func solution() -> Int {
    // graph 생성
    for _ in 0..<n {
        graph.append(Array(readLine()!.map { Int(String($0))! }))
    }
    
    // 재귀 함수 호출
    for row in 0..<n {
        for column in 0..<m {
            if dfs(row, column) == true {
                result += 1
            }
        }
    }
    return result
}

//print(solution())
