//
//  main.swift
//  AscendingNumberList
//
//  Created by 김동욱 on 2022/07/13.
//

import Foundation

func solution(x: Int, n: Int) -> Array<Any> {
    var numbers: Array<Int> = []
    for i in 0...n-1 {
        numbers.append(x + x * i)
    }
    return numbers
}

let inputData = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (x, n) = (inputData[0], inputData[1])
print(solution(x: x, n: n))
