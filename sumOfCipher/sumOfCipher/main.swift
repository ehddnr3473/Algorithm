//
//  main.swift
//  sumOfCipher
//
//  Created by 김동욱 on 2022/07/25.
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    let numberArray = String(n).compactMap { $0.wholeNumberValue }
    for i in 0..<numberArray.count {
        answer += numberArray[i]
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print(answer)
    
    return answer
}

solution(986)
