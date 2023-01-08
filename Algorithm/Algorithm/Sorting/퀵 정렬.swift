//
//  퀵 정렬.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/08.
//

/*
 퀵 정렬(Quick Sort)
 큰 숫자와 작은 숫자를 교환할 때, 교환하기 위한 기준으로서 피벗(Pivot)을 사용
    - 왼쪽에서부터 피벗보다 큰 데이터를 찾고
    - 오른쪽에서부터 피벗보다 작은 데이터를 찾음
    - 큰 데이터와 작은 데이터의 위치를 서로 교환, 이러한 과정을 반복하면 피벗에 대하여 정렬이 수행됨.
 */
import Foundation

/*
 퀵 정렬의 시간 복잡도
 데이터의 개수가 N개라고 했을 때, 높이는 약 logN. 따라서 평균 시간 복잡도는 O(NlogN).
 데이터가 무작위로 입력되는 경우 퀵 정렬은 빠르게 동작할 확률이 높음.
 하지만 리스트의 가장 왼쪽 데이터를 피벗으로 삼을 때, 이미 데이터가 정렬되어 있는 경우는 최악의 경우로 느리게 동작하여 시간 복잡도는 O(N²)
 */
func quickSorting(_ start: Int, _ end: Int) {
    // 원소가 1개인 경우 종료
    if start >= end {
        return
    }
    // 피벗은 첫 번째 원소
    let pivot = start
    var left = start + 1
    var right = end
    
    while left <= right {
        // 피벗보다 큰 데이터를 찾을 때까지 반복
        while left <= end && array[left] <= array[pivot] {
            left += 1
        }
        // 피벗보다 작은 데이터를 찾을 때까지 반복
        while right > start && array[right] >= array[pivot] {
            right -= 1
        }
        
        if left > right {  // 엇갈렸다면 작은 데이터와 피벗을 교체
            array.swapAt(right, pivot)
        } else { // 엇갈리지 않았다면 작은 데이터와 큰 데이터를 교체
            array.swapAt(left, right)
        }
    }
    // 분할 이후 왼쪽 부분과 오른쪽 부분에서 각각 정렬 수행
    quickSorting(start, right-1)
    quickSorting(right+1, end)
}

var array = [5, 7, 9, 0, 3, 1, 6, 2, 4, 8]
//quickSorting(0, array.count-1)
//print(array)
