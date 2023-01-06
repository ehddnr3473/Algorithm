//
//  BinarySearch.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/27.
//

import Foundation

func binarySearch(_ array: [Int], _ target: Int, _ start: Int, _ end: Int) -> Int {
    var start = start
    var end = end
    
    while start <= end {
        let mid = (start + end) / 2
        
        // 찾음
        if array[mid] == target {
            return mid
        // 중간점의 값보다 찾고자 하는 값이 큰 경우, start를 뒤로 밀어서 오른쪽 확인
        } else if array[mid] < target {
            start = mid + 1
        // 중간점의 값보다 찾고자 하는 값이 작은 경우, end를 앞으로 당겨서 왼쪽 확인
        } else {
            end = mid - 1
        }
    }
    fatalError("데이터가 없음.")
}

let array = Array(readLine()!.components(separatedBy: " ").map { Int($0)!} )
let target = Int(readLine()!)!

//print("Index: \(binarySearch(array, target, 0, array.count-1))")
