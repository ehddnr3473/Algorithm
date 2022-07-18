//
//  main.swift
//  Average
//
//  Created by 김동욱 on 2022/07/18.
//

import Foundation

func solution(_ arr: [Int]) -> Double {
    var average: Double = 0
    
    for i in arr {
        average += Double(i)
    }
    average /= Double(arr.count)
    
    return average
}

print(solution([1, 2, 5]))
