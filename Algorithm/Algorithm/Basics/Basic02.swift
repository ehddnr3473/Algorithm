//
//  Basic02.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/04.
//

// 프로그래머스, 옹알이 (1)
// https://school.programmers.co.kr/learn/courses/30/lessons/120956
import Foundation

func solution(_ babbling:[String]) -> Int {
    let able = ["aya", "ye", "woo", "ma"]
    var result = 0
    
    for word in babbling {
        var tempWord = ""
        var temp = ""
        for n in word {
            temp += String(n)
            if able.contains(temp) {
                tempWord += temp
                temp = ""
            }
        }
        if tempWord != word {
            continue
        } else {
            result += 1
        }
    }
    return result
}

//print(solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]))
