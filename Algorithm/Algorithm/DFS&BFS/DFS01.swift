//
//  DFS01.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

// 백준 2667번 단지번호붙이기
import Foundation

var graph = [[Int]]()
var count = 0
var result = 0
var countArray = [Int]()

let n = Int(readLine()!)!

func dfs(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x > n - 1 || y < 0 || y > n - 1 {
        return false
    }
    
    if graph[x][y] == 1 {
        graph[x][y] = 0
        dfs(x - 1, y)
        dfs(x + 1, y)
        dfs(x, y - 1)
        dfs(x, y + 1)
        count += 1
        return true
    } else {
        return false
    }
}

func solution() {
    
    for _ in 0..<n {
        graph.append(Array(readLine()!).map { Int(String($0))! })
    }
    
    for i in 0..<n {
        for j in 0..<n {
            if dfs(i, j) {
                result += 1
                countArray.append(count)
                count = 0
            }
        }
    }

    print(result)

    for count in countArray.sorted() {
        print(count)
    }
}

//solution()

