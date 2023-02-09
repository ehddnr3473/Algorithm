//
//  카드 정렬하기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 1715번 카드 정렬하기
import Foundation

let n = Int(readLine()!)!
var cards = [Int]()
var result = [Int]()

for _ in 0..<n {
    cards.append(Int(readLine()!)!)
}

func solution() -> Int {
    guard cards.count > 1 else { return 0 }
    
    cards.sort()
    
    result.append(cards[0] + cards[1])
    
    for i in 2..<cards.count {
        result.append(result[i-2] + cards[i])
    }
    
    return result.reduce(0) { accum, next in accum + next }
}

print(solution())
