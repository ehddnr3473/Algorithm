//
//  CounterClass.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/12/30.
//

import Foundation

class CounterClass {
    var value = 0
    
    func increment() -> Int {
        value += 1
        return value
    }
    
    func incrementWithWait() -> Int {
        value += 1
        for _ in 0...2 {
            print("wait")
        }
        return value
    }
}
