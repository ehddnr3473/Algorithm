//
//  main.swift
//  UpperLower
//
//  Created by 김동욱 on 2022/07/26.
//

import Foundation

func solution(_ s:String) -> String {
    var stringArray = s.compactMap { String($0) }
    var count: Int = 0
    for i in 0..<stringArray.count {
        if stringArray[i] == " " {
            count = 0
            continue
        }
        
        if count % 2 == 0 {
            stringArray[i] = stringArray[i].uppercased()
            count += 1
        } else {
            stringArray[i] = stringArray[i].lowercased()
            count += 1
        }
    }
    return stringArray.joined()
}

print(solution("try hello world"))
