//
//  main.swift
//  AddMatrix
//
//  Created by 김동욱 on 2022/07/14.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var sumArray1 = [Int]()
    var sumArray2 = [[Int]]()
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            sumArray1.append(arr1[i][j] + arr2[i][j])
        }
        sumArray2.append(sumArray1)
        sumArray1.removeAll()
    }
    return sumArray2
}


print(solution([[1, 2], [3, 4]], [[3, 2], [9, 5]]))
