//
//  main.swift
//  Suback
//
//  Created by 김동욱 on 2022/07/30.
//

import Foundation

func solution(_ n:Int) -> String {
    var result = [String]()
    if n == 0 {
        return result.joined()
    }
    if n % 2 == 0 {
        for _ in 1...n/2 {
            result.append("수박")
        }
    } else {
        for _ in 1...n/2 {
            result.append("수박")
        }
        result.append("수")
    }
    return result.joined()
}

print(solution(5))
