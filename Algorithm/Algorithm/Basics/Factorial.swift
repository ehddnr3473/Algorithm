//
//  Factorial.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

import Foundation

// 재귀 호출을 이용한 factorial 계산
func factorialRecursive(_ number: Int) -> Int {
    if number == 1 {
        return 1
    } else if number < 1 {
        fatalError("잘못된 입력입니다.")
    } else {
        return number * factorialRecursive(number-1)
    }
}

// 반복문을 이용한 factorial 계산
// stride는 factorial 문맥상 구현, 1...5로 간단하게 표현해도 무방.
func factorialIterative(_ number: Int) -> Int {
    var result = 1
    for n in stride(from: number, through: 1, by: -1) {
        result *= n
    }
    
    return result
}

//print(factorialIterative(5))
