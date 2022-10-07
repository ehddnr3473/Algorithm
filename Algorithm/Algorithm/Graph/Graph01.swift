//
//  Graph01.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/03.
//

// 백준 24444
// 인접 리스트
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, r) = (inputData[0], inputData[1], inputData[2])
var edges = [[Int]]()
var visited = Array(repeating: 0, count: n+1)
var graph: [[Int]] = Array(repeating: [], count: n+1)
var queue = [Int]()
var order = 1

func solution() {
    for _ in 0..<m {
        edges.append(Array(readLine()!.components(separatedBy: " ").map { Int($0)! }))
    }

    for edge in edges {
        graph[edge[0]].append(edge[1])
        graph[edge[1]].append(edge[0])
    }
    
    for index in graph.indices {
        graph[index].sort()
    }
    
    bfs(r)
}

func bfs(_ start: Int) {
    queue.append(start)
    visited[start] = order
    
    var index = 0
    while index < queue.count {
        let node = queue[index]

        index += 1
        for linkedNode in graph[node] {
            if visited[linkedNode] == 0 {
                order += 1
                visited[linkedNode] = order
                queue.append(linkedNode)
            }
        }
    }
}

solution()

for i in 1..<visited.count {
    print(visited[i])
}

//// Queue 구현
//import Foundation
//
//let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let (n, m, r) = (inputData[0], inputData[1], inputData[2])
//var edges = [[Int]]()
//var visited = Array(repeating: 0, count: n+1)
//var graph: [[Int]] = Array(repeating: [], count: n+1)
//var queue = Queue<Int>()
//var order = 1
//
//struct Queue<T> {
//    private var queue: [T?] = []
//    var head: Int = 0
//
//    public var count: Int {
//        return queue.count
//    }
//
//    public var isEmpty: Bool {
//        return queue.isEmpty
//    }
//
//    public mutating func enqueue(_ element: T) {
//        queue.append(element)
//    }
//
//    public mutating func dequeue() -> T? {
//        guard head < queue.count, let element = queue[head] else { return nil }
//        queue[head] = nil
//        head += 1
//
//        return element
//    }
//}
//
//func solution() {
//    for _ in 0..<m {
//        edges.append(Array(readLine()!.components(separatedBy: " ").map { Int($0)! }))
//    }
//
//    for edge in edges {
//        graph[edge[0]].append(edge[1])
//        graph[edge[1]].append(edge[0])
//    }
//
//    bfs(r)
//}
//
//func bfs(_ start: Int) {
//    queue.enqueue(start)
//    visited[start] = order
//
//    while queue.head < queue.count {
//        guard let node = queue.dequeue() else { break }
//
//        graph[node].sort()
//        for linkedNode in graph[node] {
//            if visited[linkedNode] == 0 {
//                order += 1
//                visited[linkedNode] = order
//                queue.enqueue(linkedNode)
//            }
//        }
//    }
//}
