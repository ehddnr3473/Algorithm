//
//  main.swift
//  VerifyNumber
//
//  Created by 김동욱 on 2022/08/02.
//

import Foundation

func solution(_ s:String) -> Bool {
    let array = s.compactMap { String($0) }
    if !(array.count == 4 || array.count == 6) {
        return false
    }
    for i in array {
        guard Int(i) != nil else {
            return false
        }
    }
    return true
}
