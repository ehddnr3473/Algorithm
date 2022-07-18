//
//  main.swift
//  Collatz
//
//  Created by 김동욱 on 2022/07/18.
//

import Foundation

func solution(_ num:Int) -> Int {
    var num: Int = num
    var count: Int = 0
    while num != 1 {
        if count == 500 {
            return -1
        }
        if num % 2 == 0 {
            num /= 2
        } else {
            num *= 3
            num += 1
        }
        count += 1
    }
    return 0
}

print(solution(6))

