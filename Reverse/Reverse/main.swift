//
//  main.swift
//  Reverse
//
//  Created by 김동욱 on 2022/07/24.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    var numberArray = String(n).compactMap{$0.wholeNumberValue}
    numberArray.reverse()
    return numberArray
}

print(solution(412412))
