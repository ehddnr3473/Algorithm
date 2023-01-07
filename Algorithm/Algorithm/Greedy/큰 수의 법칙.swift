//
//  큰 수의 법칙.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/07.
//

// 이코테 92P 큰 수의 법칙
import Foundation

// 너무 복잡, 배열 요소 삭제에 시간 소요
func solution_1() -> Int {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
    /*
     배열의 크기 N
     숫자가 더해지는 횟수 M
     연속으로 더해질 수 있는 횟수 K
     */
    let (n, k) = (inputData[0], inputData[2])
    var m = inputData[1]
    var result = 0
    var temp: Int?
    var isEnabled = true
    
    while m != 0 {
        let maxNumber = array.max()!
        
        if m >= k && isEnabled {
            result += maxNumber * k
            m -= k
            
            let index = array.firstIndex { $0 == maxNumber }!
            temp = array[index]
            array.remove(at: index)
            isEnabled.toggle()
        } else if m >= k && !isEnabled {
            result += maxNumber
            m -= 1
            array.append(temp!)
            isEnabled.toggle()
        } else {
            result += maxNumber * m
            break
        }
    }
    
    return result
}

// 단순한 답안 예시
func solution_2() -> Int {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
    /*
     배열의 크기 N
     숫자가 더해지는 횟수 M
     연속으로 더해질 수 있는 횟수 K
     */
    let (n, k) = (inputData[0], inputData[2])
    var m = inputData[1]
    var result = 0
    
    let sortedArray = array.sorted(by: >)
    let first = sortedArray[0]
    let second = sortedArray[1]
    
    while true {
        for _ in 0..<k {
            if m == 0 { break }
            result += first
            m -= 1
        }
        if m == 0 {
            break
        }
        result += second
        m -= 1
    }
    
    return result
}

// 수열을 찾아서 최적화
func solution_3() -> Int {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    /*
     배열의 크기 N
     숫자가 더해지는 횟수 M
     연속으로 더해질 수 있는 횟수 K
     */
    let (n, k) = (inputData[0], inputData[2])
    var m = inputData[1]
    
    let sortedArray = array.sorted(by: >)
    let first = sortedArray[0]
    let second = sortedArray[1]
    
    // 가장 큰 수가 더해지는 횟수(count) 계산
    var count = m/(k+1) * k
    count += m % (k+1)
    
    var result = 0
    result += (count) * first
    result += (m - count) * second
    
    return result
}

//print(solution())
