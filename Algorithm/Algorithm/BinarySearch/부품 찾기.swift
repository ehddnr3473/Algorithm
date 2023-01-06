//
//  부품 찾기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/06.
//

// 이코테 197P 부품 찾기
import Foundation

/*
 가게의 재고 수
 재고 부품 번호
 이진 탐색을 위한 정렬
 
 고객의 요청 부품 수
 고객이 요청하는 부품 번호
 */
let n = Int(readLine()!)
let stock = readLine()!.components(separatedBy: " ").map { Int($0)! }
let sortedStock = stock.sorted(by: <)

let m = Int(readLine()!)
let parts = readLine()!.components(separatedBy: " ").map { Int($0)! }

// 이진 탐색
func binarySearch(_ array: [Int], _ target: Int, _ start: Int, _ end: Int) -> String {
    var start = start
    var end = end
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] == target {
            return "yes"
        } else if array[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return "no"
}

func solution() -> [String] {
    var result = [String]()
    
    for part in parts {
        result.append(binarySearch(sortedStock, part, 0, sortedStock.count-1))
    }
    return result
}

//print(solution().joined(separator: " "))
