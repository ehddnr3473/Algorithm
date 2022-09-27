//
//  BinarySearch.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/27.
//

import Foundation

func binarySearch(_ inputArray: [Int], _ target: Int) -> Int {
    var start = 0
    var end = inputArray.count - 1
    var mid = (start + end) / 2
    
    while end - start >= 0 {
        if inputArray[mid] == target {
            return mid
        } else if inputArray[mid] <= target {
            start = mid + 1
        } else {
            end = mid - 1
        }
        // start&end로 탐색
        mid = (start + end) / 2
    }
    return -1
}
