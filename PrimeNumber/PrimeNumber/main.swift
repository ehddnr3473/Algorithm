//
//  main.swift
//  PrimeNumber
//
//  Created by 김동욱 on 2022/07/31.
//

import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 0
    var result: Int = 0
    
    for i in 2...n {
        for j in 1...i {
            if i % j == 0 {
                count += 1
            }
        }
        if count == 2 {
            result += 1
        }
        count = 0
    }
    return result
}

print(solution(5))
