//
//  가장 긴 증가하는 부분 수열_BS.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/26.
//

// 백준 11053번 가장 긴 증가하는 부분 수열
// https://www.acmicpc.net/problem/11053
import Foundation

let n = Int(readLine()!)!

let s = readLine()!.split(separator: " ").map { Int($0)! }

var lis = [s[0]]

func solution() -> Int {
    for i in 1..<n {
        if s[i] > lis.last! {
            lis.append(s[i])
        } else {
            var left = 0
            var right = lis.count - 1
            var answer = -1
            
            while left <= right {
                let mid = (left + right) / 2
                
                if lis[mid] >= s[i] {
                    answer = mid
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
            
            if answer != -1 {
                lis[answer] = s[i]
            }
        }
    }
    
    return lis.count
}

print(solution())
