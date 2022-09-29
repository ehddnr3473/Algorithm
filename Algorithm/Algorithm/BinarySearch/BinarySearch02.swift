//
//  BinarySearch02.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/28.
//

// 백준 1920 수 찾기
import Foundation

let n = Int(readLine()!)
let nArray = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.sorted()
let m = Int(readLine()!)
let mArray = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var result = [Int]()

func binarySearch(_ number: Int) {
    var start = 0
    var end = nArray.count - 1
    var mid = (start + end) / 2
    
    while end - start >= 0 {
        if nArray[mid] == number {
            result.append(1)
            return
        } else if nArray[mid] <= number {
            start = mid + 1
        } else {
            end = mid - 1
        }
        mid = (start + end) / 2
    }
    result.append(0)
}

func solution() {
    for index in mArray.indices {
        binarySearch(mArray[index])
    }

    result.forEach {
        print($0)
    }
}

//solution()
