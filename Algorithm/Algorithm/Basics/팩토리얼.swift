//
//  팩토리얼.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

import Foundation

let number = Int(readLine()!)!

func solution(_ number: Int) -> Int {
    var result = 1
    guard number > 1 else { return result }
    
    for i in 2...number {
        result *= i
    }
    return result
}

print(solution(number))
