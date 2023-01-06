//
//  부품찾기_계수 정렬.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

import Foundation

// 계수 정렬의 개념을 이용해서 부품 찾기 문제 해결
func solution() {
    let n = Int(readLine()!)
    var array = Array(repeating: 0, count: 1000001)
    
    // 가게에 있는 전체 부품 번호를 입력받아서 기록
    let stock = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    for part in stock {
        array[part] = 1
    }
    
    // 고객이 요청한 부품 개수 및 부품 번호 입력
    let m = Int(readLine()!)
    let parts = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    for part in parts {
        if array[part] == 1 {
            print("yes", terminator: " ")
        } else {
            print("no", terminator: " ")
        }
    }
    print("")
}
