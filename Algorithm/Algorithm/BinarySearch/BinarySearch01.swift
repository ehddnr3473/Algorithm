//
//  BinarySearch01.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/27.
//

// 프로그래머스, 이분탐색 > 입국심사
// https://school.programmers.co.kr/learn/courses/30/lessons/43238
import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    let times = times.sorted()
    var (min, max) = (1, times.max()!*n)
    var minTime = 0
    
    while min <= max {
        let mid = (min + max) / 2
//        var numberOfPeople = 0
//        times.forEach {
//            numberOfPeople += mid / $0
//        }
        
        if sumOfPeople(mid, times) >= n {
            max = mid - 1
            minTime = mid
        } else {
            min = mid + 1
        }
    }
    
    return Int64(minTime)
}

// Parametric Search
func sumOfPeople(_ time: Int, _ times: [Int]) -> Int {
    var numberOfPeople = 0
    
    times.forEach {
        numberOfPeople += time / $0
    }
    
    return numberOfPeople
}

