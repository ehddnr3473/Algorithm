//
//  main.swift
//  SquareRoot
//
//  Created by 김동욱 on 2022/07/22.
//

import Foundation

func solution(_ n: Int) -> Int {
    let squareRootNumber = Int(sqrt(Double(n)))
    
    if (squareRootNumber * squareRootNumber) == n {
        return (squareRootNumber + 1) * (squareRootNumber + 1)
    } else {
        return -1
    }
}

print(solution(144))
