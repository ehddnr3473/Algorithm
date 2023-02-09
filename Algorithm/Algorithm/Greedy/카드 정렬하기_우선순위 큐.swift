//
//  카드 정렬하기_우선순위 큐.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/02/09.
//

// 백준 1715번 카드 정렬하기
import Foundation

class MinHeap {
    var heap = [0]
    
    var isEmpty: Bool { return heap.count == 1 }
    
    func parentIndex(_ index: Int) -> Int {
        index / 2
    }
    
    func leftChildIndex(of index: Int) -> Int {
        index * 2
    }
    
    func rightChildIndex(of index: Int) -> Int {
        index * 2 + 1
    }
    
    func push(_ element: Int) {
        if heap.count == 1 {
            heap.append(element)
            return
        }
        heap.append(element)
        
        restructureForPush()
    }
    
    func restructureForPush() {
        var index = heap.count - 1
        
        while index != 1 && heap[index] < heap[parentIndex(index)] {
            heap.swapAt(index, parentIndex(index))
            index /= 2
        }
    }
    
    func pop() -> Int? {
        guard heap.count > 1 else { return nil }
        
        if heap.count == 2 {
            return heap.removeLast()
        }
        
        let maxValue = heap[1]
        heap[1] = heap.removeLast()
        
        restructureForPop()
        
        return maxValue
    }
    
    func restructureForPop() {
        var index = 1
        while rightChildIndex(of: index) < heap.count {
            if heap[index] <= min(heap[leftChildIndex(of: index)], heap[rightChildIndex(of: index)]) {
                break
            } else if heap[leftChildIndex(of: index)] < heap[rightChildIndex(of: index)] {
                heap.swapAt(index, leftChildIndex(of: index))
                index = leftChildIndex(of: index)
            } else {
                heap.swapAt(index, rightChildIndex(of: index))
                index = rightChildIndex(of: index)
            }
        }
        
        if leftChildIndex(of: index) < heap.count && heap[index] > heap[leftChildIndex(of: index)] {
            heap.swapAt(index, leftChildIndex(of: index))
        }
    }
}

let n = Int(readLine()!)!
let heap = MinHeap()
var result = 0

for _ in 0..<n {
    heap.push(Int(readLine()!)!)
}

for _ in 0..<n-1 {
    let first = heap.pop()!
    let second = heap.pop()!
    
    result += (first + second)
    heap.push(first + second)
}

print(result)
