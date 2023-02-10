//
//  데이터 입력 - split.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b) = (inputData[0], inputData[1])
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)

/*
 입력 예시
 7 3
 */

/*
 출력 예시
 10
 4
 21
 2
 1
 */
