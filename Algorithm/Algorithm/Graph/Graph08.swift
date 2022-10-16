//
//  Graph08.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/17.
//

// 백준 1753 다익스트라 - 우선순위 큐(힙)
import Foundation

struct Node {
    let number: Int
    let weight: Int
}
struct MinHeap {
    var heap = [Node(number: 0, weight: 0)]
    
    var isEmpty: Bool { return heap.count == 1 }
    
    func parentIndex(_ index: Int) -> Int {
        index / 2
    }
    
    private func leftChildIndex(of index: Int) -> Int {
        index * 2
    }
    
    private func rightChildIndex(of index: Int) -> Int {
        index * 2 + 1
    }
    
    mutating func enqueue(_ element: Node) {
        if heap.count == 1 {
            heap.append(element)
            return
        }
        heap.append(element)
        
        restructureForEnqueue()
    }
    
    mutating func restructureForEnqueue() {
        var index = heap.count - 1
        
        while index != 1 && heap[index].weight < heap[parentIndex(index)].weight {
            heap.swapAt(index, parentIndex(index))
            index /= 2
        }
    }
    
    mutating func dequeue() -> Node? {
        guard heap.count > 1 else { return nil}
        
        if heap.count == 2 {
            return heap.removeLast()
        }
        
        let minValueNode = heap[1]
        heap[1] = heap.removeLast()
        
        restructureForDequeue()
        
        return minValueNode
    }
    
    mutating func restructureForDequeue() {
        var index = 1
        while rightChildIndex(of: index) < heap.count {
            if heap[index].weight <= min(heap[leftChildIndex(of: index)].weight, heap[rightChildIndex(of: index)].weight) {
                break
            } else if heap[leftChildIndex(of: index)].weight < heap[rightChildIndex(of: index)].weight {
                heap.swapAt(index, leftChildIndex(of: index))
                index = leftChildIndex(of: index)
            } else {
                heap.swapAt(index, rightChildIndex(of: index))
                index = rightChildIndex(of: index)
            }
        }
        
        if leftChildIndex(of: index) < heap.count && heap[index].weight > heap[leftChildIndex(of: index)].weight {
            heap.swapAt(index, leftChildIndex(of: index))
        }
    }
}

let infinity = Int(1e9)
let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (numberOfVertices, numberOfEdges) = (inputData[0], inputData[1])

let startVertex = Int(readLine()!)!

var graph = [[(node: Int, cost: Int)]](repeating: [(node: Int, cost: Int)](repeating: (node: 0, cost: 0), count: 0), count: numberOfVertices + 1)

var visited = Array(repeating: false, count: numberOfVertices + 1)

var minWeight = Array(repeating: infinity, count: numberOfVertices + 1)
var priorityQueue = MinHeap()

for _ in 0..<numberOfEdges {
     let input = readLine()!.split(separator: " ").map { Int($0)! }
     let a = input[0], node = input[1], cost = input[2]
     graph[a].append((node: node, cost: cost))
 }


//[
//    [(2, 2), (3, 3)]
//    [(3, 4), (4, 5)]
//    [(4, 6)]
//    []
//    []
//    [(1, 1)]
//]


func solution(_ start: Int) {
    priorityQueue.enqueue(Node(number: start, weight: 0))

    minWeight[start] = 0
    
    while !priorityQueue.isEmpty {
        guard let now = priorityQueue.dequeue() else { return }
        
        if minWeight[now.number] < now.weight {
            continue
        }
        // now를 경유지로 해서, 처음~마지막 노드를 목적지로 삼아서 기존의 비용보다 적게 든다면 갱신, 우선순위 큐에 삽입
        for destination in graph[now.number] {
            let viaWeight = minWeight[now.number] + destination.cost
            if viaWeight < minWeight[destination.node] {
                minWeight[destination.node] = viaWeight
                priorityQueue.enqueue(Node(number: destination.node, weight: viaWeight))
            }
        }
    }
}

solution(startVertex)

for index in 1...numberOfVertices {
    if minWeight[index] == infinity {
        print("INF")
    } else {
        print(minWeight[index])
    }
}
