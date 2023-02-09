//
//  설탕 배달_그리디.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 2839 설탕 배달
import Foundation

var sugar = Int(readLine()!)!

func greedySolution() -> Int {
    var result = 0
    
    while sugar >= 0 {
        if sugar % 5 == 0 {
            result += (sugar/5)
            return result
        }
        sugar -= 3
        result += 1
    }
    
    return -1
}
