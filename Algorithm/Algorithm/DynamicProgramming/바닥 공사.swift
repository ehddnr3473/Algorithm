//
//  바닥 공사.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/19.
//

// 이코테 223P
import Foundation

func solution() -> Int {
    var result = 0
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: 1001)
    
    dp[1] = 1
    dp[2] = 3
    
    for i in 3...n {
        dp[i] = (dp[i - 1] + 2 * dp[i - 2]) % 796796
    }
    
    return dp[n]
}

//print(solution())
