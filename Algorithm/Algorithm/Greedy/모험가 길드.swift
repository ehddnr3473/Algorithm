//
//  모험가 길드.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/31.
//

// 이코테 311P 모험가 길드
import Foundation

func solution(_ adventurers: [Int]) -> Int {
    var result = 0
    var count = 0
    for adventurer in adventurers {
        count += 1
        if adventurer <= count {
            result += 1
            count = 0
        }
    }
    
    
    return result
}

let numberOfAdvanturers = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let advanturers = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

print(solution(advanturers))

/*
 입력 예시
5
2 3 1 2 2
 */

/*
 출력 예시
2
 */
