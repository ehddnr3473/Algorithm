//
//  main.swift
//  ConvertToInt
//
//  Created by 김동욱 on 2022/07/29.
//

import Foundation

func solution(_ s:String) -> Int {
    var arrayS = s.compactMap { String($0) }
    var result: Int = 0
    var minus: Bool = false
    
    if arrayS[0] == "-" {
        minus = true
        arrayS.remove(at: 0)
    }
    
    for i in 0..<arrayS.count {
        if let number = Int(arrayS[i]) {
            result += number * Int(pow(10.0, Double(arrayS.count-i-1)))
        }
    }
    if minus {
        return result * -1
    }
    return result
 }

print(solution("-99999999999"))
