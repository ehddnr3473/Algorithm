//
//  main.swift
//  GcdLcm
//
//  Created by 김동욱 on 2022/07/19.
//

import Foundation

// 최대공약수와 최소공배수
// n, m 각각 약수 리스트를 만든 다음, 최대공약수 return
// n, m 각각 배수 리스트를 만든 다음, 최소공배수 return
func solution(_ n:Int, _ m:Int) -> [Int] {
    var firstData = n
    var secondData = m
    var cdOfN = [Int]()
    var cdOfM = [Int]()
    var solutionValues = [Int]()
    var i: Int = 2
    
    // 최대공약수
    for i in 1...n {
        if n % i == 0 {
            cdOfN.append(i)
        }
    }
    
    for j in 1...m {
        if m % j == 0 {
            cdOfM.append(j)
        }
    }
    
    for a in cdOfN.reversed() {
        for b in cdOfM.reversed() {
            if a == b {
                solutionValues.append(a)
                break
            }
        }
        if !solutionValues.isEmpty{
            break
        }
    }
    // 최소공배수
    // 역전되면 i = 2
    // 아니라면 i += 1
    while firstData != secondData {
        if secondData > firstData {
            firstData = n * i
            if firstData > secondData {
                i = 2
            } else {
                i += 1
            }
        } else {
            secondData = m * i
            if secondData > firstData {
                i = 2
            } else {
                i += 1
            }
        }
    }
    solutionValues.append(firstData)
    
    return solutionValues
}

print(solution(144, 14))
