//
//  main.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/25.
//

// 백준 1654 랜선 자르기
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (k, n) = (inputData[0], inputData[1])
var lengthOfLine = [Int]()

for _ in 0..<k {
    lengthOfLine.append(Int(readLine()!)!)
}
    
func solution() -> Int {
    var result = 0
    var min = 1
    var max = lengthOfLine.max()!
    
    while min <= max {
        let mid = (min + max) / 2
        
        if sum(mid) >= n {
            result = mid
            min = mid + 1
        } else {
            max = mid - 1
        }
    }
    
    return result
}

// Parametric Search
func sum(_ lenthOfDivision: Int) -> Int {
    var sumOfLines = 0
    
    for length in lengthOfLine {
        sumOfLines += length/lenthOfDivision
    }
    
    return sumOfLines
}

print(solution())
