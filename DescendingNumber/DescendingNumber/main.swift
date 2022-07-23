//
//  main.swift
//  DescendingNumber
//
//  Created by 김동욱 on 2022/07/23.
//

import Foundation

func solution(_ n: Int) -> Int {
    let descendingNumber = String(n)
    let sortedArray: [Character] = descendingNumber.sorted(by: {(first: Character, second: Character) -> Bool in
        return first > second
    })
    var result: Int = 0

    for i in 0..<sortedArray.count {
        result += Int(String(sortedArray[i]))! * Int(pow(10.0, Float(sortedArray.count - i - 1)))
    }
    return result
}

print(solution(118372))

