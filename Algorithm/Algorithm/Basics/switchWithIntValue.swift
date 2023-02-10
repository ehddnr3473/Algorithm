//
//  switchWithIntValue.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/10.
//

import Foundation

func solution(_ score: Int) {
    switch score {
    case 90...100:
        print("A")
    case 80...89:
        print("B")
    case 70...79:
        print("C")
    case 60...69:
        print("D")
    default:
        print("F")
    }
}

let score = Int(readLine()!)!
solution(score)
