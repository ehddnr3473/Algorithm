//
//  Rotate.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

import Foundation

// 오른쪽으로 90도 회전
func rotateMatrixBy90Degree(matrix:[[Int]]) -> [[Int]] {
    let n = matrix.count
    let m = matrix[0].count
    var result = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for i in 0..<n {
        for j in 0..<m {
            result[j][n - i - 1] = matrix[i][j]
        }
    }
    
    return result
}
