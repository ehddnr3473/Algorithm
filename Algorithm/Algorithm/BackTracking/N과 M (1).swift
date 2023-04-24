//
//  N과 M (1).swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/24.
//

// 백준 15649번 N과 M (1)
// https://www.acmicpc.net/problem/15649
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (n, m) = (inputData[0], inputData[1])

var s = [Int]()

func bfs() {
    if s.count == m {
        let result = s.map { String($0) }.joined(separator: " ")
        print(result)
        return
    }
    
    for i in 1...n {
        if !s.contains(i) {
            s.append(i)
            bfs()
            s.popLast()
        }
    }
}

//bfs()
