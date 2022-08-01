//
//  main.swift
//  MrKim
//
//  Created by 김동욱 on 2022/08/01.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    var result: Int = 0
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            result = i
            break
        }
    }
    return "김서방은 \(result)에 있다"
}

print(solution(["Jane", "Kim"]))
