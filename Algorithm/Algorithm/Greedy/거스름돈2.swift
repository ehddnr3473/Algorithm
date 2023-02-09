//
//  거스름돈2.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 5585번 거스름돈
import Foundation

let coins = [500, 100, 50, 10, 5, 1]
let money = 1000
let howMuch = Int(readLine()!)!

var change = money - howMuch

var result = 0

for coin in coins {
    result += change / coin
    change = change % coin
}

print(result)
