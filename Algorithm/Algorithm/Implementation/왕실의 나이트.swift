//
//  왕실의 나이트.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/05.
//

// 이코테 115P 왕실의 나이트
import Foundation

func solution() -> Int {
    let columnDictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
    
    let inputData = readLine()!
    let row = Int(String(inputData[inputData.index(inputData.endIndex, offsetBy: -1)]))!
    let column = columnDictionary[String(inputData[inputData.startIndex])]!
    
    let steps = [(-2, -1), (-2, 1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2)]
    var result = 0
    
    for step in steps {
        // 이동할 위치
        let nextRow = row + step.0
        let nextColumn = column + step.1
        // 이동가능하다면 카운트 증가
        if nextRow >= 1 && nextRow <= 8 && nextColumn >= 1 && nextColumn <= 8 {
            result += 1
        }
    }
    
    return result
}
