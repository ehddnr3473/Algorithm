//
//  거스름돈.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/07.
//

// 이코테 87P 거스름돈
import Foundation

func solution() -> Int {
    var change = Int(readLine()!)!
    let coins = [500, 100, 50, 10]
    var result = 0
    
    
    for coin in coins {
        if change >= coin {
            result += change / coin
            change %= coin
        }
    }
    
    return result
}

//print(solution())

