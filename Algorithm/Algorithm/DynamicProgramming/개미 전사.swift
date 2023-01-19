//
//  개미 전사.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/19.
//

// 이코테 220P
import Foundation
/*
 입력 예
 4
 1 3 1 5
 
 4
 2 1 8 10
 */
func solution() -> Int {
    let n = Int(readLine()!)!
    var k = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    for index in 2..<k.count {
        k[index] = max(k[index-1], k[index-2] + k[index])
    }
    
    return k[n-1]
}

func solution_2() -> Int {
    let n = Int(readLine()!)!
    var k = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var dp = Array(repeating: 0, count: 101)
    // 다이나믹 프로그래밍 진행(바텀업)
    dp[0] = k[0]
    dp[1] = max(k[0], k[1])
    
    for index in 2..<k.count {
        dp[index] = max(dp[index-1], dp[index-2] + k[index])
    }
    
    return k[n-1]
}

//print(solution())
