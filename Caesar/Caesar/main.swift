//
//  main.swift
//  Caesar
//
//  Created by 김동욱 on 2022/07/28.
//

import Foundation

// a~z : 97~122
// A~Z : 65~90
func solution(_ s:String, _ n:Int) -> String {
    let stringArray = s.compactMap { String($0) }
    var result = [String]()
    var unicodeValue: Int = 0
    
    for i in stringArray {
        if i == " " {
            result.append(" ")
            continue
        }
        unicodeValue = Int(UnicodeScalar(i)!.value)
        if Character(i).isLowercase {
            if unicodeValue + n > 122 {
                unicodeValue -= 26
            }
        } else {
            if unicodeValue + n > 90 {
                unicodeValue -= 26
            }
        }
        unicodeValue += n
        
        result.append(String(UnicodeScalar(unicodeValue)!))
    }

    return result.joined()
}

print(solution("AZz", 1))

