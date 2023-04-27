//
//  대소문자 바꿔서 출력하기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/27.
//

// 프로그래머스 대소문자 바꿔서 출력하기
// https://school.programmers.co.kr/learn/courses/30/lessons/181949
import Foundation

// 1
let s1 = readLine()!

let strings = s1.map { $0 }

for i in strings.indices {
    if strings[i].isLowercase {
        print(strings[i].uppercased(), terminator: "")
    } else {
        print(strings[i].lowercased(), terminator: "")
    }
}

// 2
print(readLine()!.map { $0.isLowercase ? $0.uppercased() : $0.lowercased()}.joined())
