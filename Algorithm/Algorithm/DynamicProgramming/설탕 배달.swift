//
//  설탕 배달.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 2839 설탕 배달
import Foundation

var sugar = Int(readLine()!)!
var dp = Array(repeating: 0, count: 5001)

dp[3] = 1
dp[5] = 1

if sugar > 5 {
    for i in 6...sugar {
        if dp[i - 5] != 0 {
            dp[i] = dp[i - 5] + 1
            continue
        } else if dp[i - 3] != 0 {
            dp[i] = dp[i - 3] + 1
        }
    }
}

if dp[sugar] == 0 {
    print(-1)
} else {
    print(dp[sugar])
}
