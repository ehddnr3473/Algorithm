//
//  main.swift
//  RemoveTheSmallestNumber
//
//  Created by 김동욱 on 2022/07/21.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr: [Int] = arr
    var indexForRemove = [Int]()
    // arr를 오름차순으로 정렬
    let ascendingOrderArray = arr.sorted(by: {(first: Int, second: Int) -> Bool in
        return first < second
    })
    let smallestNumber = ascendingOrderArray[0]
    
    // index를 순회하며 가장 작은 수를 만나면 removeIndex 배열에 그것의 인덱스를 저장
    for i in 0..<arr.count {
        if arr[i] == smallestNumber {
            indexForRemove.append(i)
        }
    }
    // 앞에서부터 remove()시에는 Index out of range 에러발생
    // for문 탐색을 거꾸로하여 삭제
    for i in stride(from: indexForRemove.count-1, through: 0, by: -1) {
        arr.remove(at: indexForRemove[i])
    }
    
    // 삭제후, 배열이 비어있으면 -1을 채워 return
    if arr.isEmpty {
        arr.append(-1)
        return arr
    }
    return arr
}

print(solution([4, 3, 2, 1]))
