//
//  main.swift
//  HarshadNumber
//
//  Created by 김동욱 on 2022/07/16.
//

import Foundation

func solution(_ x:Int) -> Bool {
    var sum: Int = 0
    // Int형인 x를 String으로 형변환 후
    // 다시 Int로 형변환하여 처리
    // i는 Character형이기 때문에 Int((String))
    for i in String(x) {
        guard let number = Int(String(i)) else { break }
        sum += number
    }
    return x % sum == 0
}

print(solution(18))
