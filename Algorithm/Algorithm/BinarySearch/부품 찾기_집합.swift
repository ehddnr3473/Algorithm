//
//  부품 찾기_집합.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

import Foundation

/*
 부품 찾기 문제는 단순히 특정한 수가 한 번이라도 등장했는지를 검사하면 되므로 집합 자료형을 이용해서 문제를 해결할 수 있음.
 집합 자료형은 특정 데이터가 존재하는지 검사할 때에 매우 효과적.
 */
func solution() {
    let n = Int(readLine()!)
    let mySet = Set(readLine()!.components(separatedBy: " ").map { Int($0)! })

    let m = Int(readLine()!)
    let parts = readLine()!.components(separatedBy: " ").map { Int($0)! }

    for part in parts {
        // Set에 부품 번호가 존재하는지 확인
        if mySet.contains(part) {
            print("yes", terminator: " ")
        } else {
            print("no", terminator: " ")
        }
    }
    print("")
}
