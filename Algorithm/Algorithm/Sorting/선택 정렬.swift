//
//  선택 정렬.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/08.
//

/*
 선택 정렬(Selection Sort)
 데이터가 무작위로 여러 개 있을 때, 그 중에서 가장 작은 데이터를 선택해
 맨 앞에 있는 데이터와 바꾸고, 그다음 작은 데이터를 선택해 앞에서 두 번째 데이터와 바꾸는 과정을 반복
 - 매번 가장 작은 것을 선택
 */
import Foundation

// 오름차순 정렬
func selectionSorting() {
    var array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
    
    // i를 하나씩 증가시켜가며 범위를 좁힘.
    for i in array.indices {
        var minIndex = i
        // i+1 ~ 배열의 끝까지 탐색해서 가장 작은 값의 인덱스 검출
        for j in i+1..<array.count {
            if array[minIndex] > array[j] {
                minIndex = j
            }
        }
        // 현재 기준 인덱스(i)의 값과 가장 작은 값을 swap
        array.swapAt(i, minIndex)
    }
    
    print(array)
}

//selectionSorting()
