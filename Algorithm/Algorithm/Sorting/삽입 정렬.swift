//
//  삽입 정렬.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/08.
//

/*
 삽입 정렬(Insertion Sort)
 특정한 데이터를 적절한 위치에 삽입한다는 의미
    - 특정한 데이터의 앞까지의 데이터는 이미 정렬되어 있다고 가정
    - 정렬되어 있는 데이터 리스트에서 적절한 위치를 찾은 뒤에, 그 위치에 삽입
 필요할 때만 위치를 바꾸므로 데이터가 거의 정렬되어 있을 때 효율적.
 선택 정렬은 현재 데이터의 상태와 상관없이 무조건 모든 원소를 비교하고 위치를 바꾸는 반면 삽입 정렬은 그렇지 않음.
 */
import Foundation

/*
 삽입 정렬의 시간 복잡도
 선택 정렬과 마찬가지로 반복문이 2번 중첩. 따라서 삽입 정렬의 시간 복잡도는 O(N²)
 삽입 정렬은 현재 리스트의 데이터가 거의 정렬되어 있는 상태라면 매우 빠르게 동작. 최선의 경우 O(N)의 시간 복잡도를 가짐.
 */
func insertionSorting() {
    var array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
    
    for i in 1..<array.count {
        for j in stride(from: i, to: 0, by: -1) {
            if array[j] < array[j-1] {
                array.swapAt(j, j-1)
            } else {
                break
            }
        }
    }
    
    print(array)
}

//insertionSorting()
