//
//  N과 M (2).swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/24.
//

// 백준 15650번 N과 M (2)
// https://www.acmicpc.net/problem/15650
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n, m) = (inputData[0], inputData[1])

var s = [Int]()

func dfs() {
    if s.count == m {
        let result = s.map { String($0) }.joined(separator: " ")
        print(result)
        return
    }
    
    for i in 1...n {
        if !s.contains(i) && s.allSatisfy({ $0 < i }) {
            s.append(i)
            bfs()
            _ = s.popLast()
        }
    }
}

//dfs()
