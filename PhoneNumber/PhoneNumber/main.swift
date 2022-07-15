//
//  main.swift
//  PhoneNumber
//
//  Created by 김동욱 on 2022/07/15.
//

import Foundation

//func solution(_ phone_number: String) -> String {
//    var answer = String()
//    for _ in 0..<phone_number.count-4 {
//        answer += "*"
//    }
//    answer += phone_number.suffix(4)
//    return answer
//}

func solution(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}

print(solution("01012341234"))

