//
//  main.swift
//  SumOfDivisor
//
//  Created by 김동욱 on 2022/07/27.
//

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    for i in 1...n {
        if n % i == 0 {
            result += i
        }
    }
    return result
}

print(solution(220000))

