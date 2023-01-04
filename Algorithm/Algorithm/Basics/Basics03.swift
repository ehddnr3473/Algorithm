//
//  Basics03.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/04.
//

// 프로그래머스, 다음에 올 숫자
// https://school.programmers.co.kr/learn/courses/30/lessons/120924
import Foundation

func solution(_ common:[Int]) -> Int {
    if common[1] - common[0] == common[2] - common[1] {
        let number = common[1] - common[0]
        return common.last! + number
    } else {
        let number = common[1] / common[0]
        return common.last! * number
    }
}

//print(solution([1, 2, 3, 4]))
