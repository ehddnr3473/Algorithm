//
//  가장 긴 증가하는 부분 수열.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/26.
//

// 백준 11053번 가장 긴 증가하는 부분 수열
// https://www.acmicpc.net/problem/11053
import Foundation

let n = Int(readLine()!)!

let s = readLine()!.split(separator: " ").map { Int($0)! }

func solution() -> Int {
    var dp = Array(repeating: 1, count: n)
    
    for i in 0..<n {
        for j in 0..<i {
            if s[i] > s[j] {
                dp[i] = max(dp[i], dp[j] + 1)
            }
        }
    }
    
    return dp.max()!
}

print(solution())
