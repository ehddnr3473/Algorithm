//
//  main.swift
//  EvenOdd
//
//  Created by 김동욱 on 2022/07/20.
//

import Foundation

func solution(_ num:Int) -> String {
    var result: String
    if num % 2 == 0 {
        result = "Even"
    } else {
        result = "Odd"
    }
    return result
}

print(solution(12))
