//
//  보물.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/12.
//

// 백준 1026 보물
import Foundation

let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let b = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

var sum = 0

for index in 0..<n {
    sum += a[index] * b[index]
}

print(sum)
