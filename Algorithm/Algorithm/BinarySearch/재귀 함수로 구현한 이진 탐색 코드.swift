//
//  재귀 함수로 구현한 이진 탐색 코드.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

import Foundation

func binarySearch(_ array: [Int], _ target: Int, _ start: Int, _ end: Int) -> Int {
    if start > end {
        fatalError("데이터가 없음.")
    }
    let mid = (start + end) / 2
    
    // 찾음
    if array[mid] == target {
        return mid
    // 중간점의 값보다 찾고자 하는 값이 작은 경우, end를 앞으로 당겨서 왼쪽 확인
    } else if array[mid] > target {
        return binarySearch(array, target, start, mid-1)
    // 중간점의 값보다 찾고자 하는 값이 큰 경우, start를 뒤로 밀어서 오른쪽 확인
    } else {
        return binarySearch(array, target, mid + 1, end)
    }
}

// 띄어쓰기 없이 입력받기
// 1234
let array_1 = Array(readLine()!.map { Int(String($0))! })

// 띄어쓰기하여 입력받기
// 1 2 3 4
let array_2 = Array(readLine()!.components(separatedBy: " ").map { Int($0)!} )
let target = Int(readLine()!)!

//print("Index: \(binarySearch(array_2, target, 0, array.count-1))")
