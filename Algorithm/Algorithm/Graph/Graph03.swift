//
//  Graph03.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/05.
//

// 백준 24446
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, r) = (inputData[0], inputData[1], inputData[2])
var edges = [[Int]]()
var visited = Array(repeating: -1, count: n+1)
var graph: [[Int]] = Array(repeating: [], count: n+1)
var queue = Queue<Int>()

struct Queue<T> {
    private var queue: [T?] = []
    var head: Int = 0

    public var count: Int {
        return queue.count
    }

    public var isEmpty: Bool {
        return queue.isEmpty
    }

    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }

    public mutating func dequeue() -> T? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1

        return element
    }
}

func solution() {
    for _ in 0..<m {
        edges.append(readLine()!.components(separatedBy: " ").map { Int($0)! })
    }

    for edge in edges {
        graph[edge[0]].append(edge[1])
        graph[edge[1]].append(edge[0])
    }
    bfs(r)
}

func bfs(_ start: Int) {
    var depth = 0
    queue.enqueue(start)
    visited[start] = depth
    
    var queueSize = queue.count
    
    while queue.head < queue.count {
        depth += 1
        let copiedQueueSize = queueSize
        queueSize = 0
        
        for _ in 0..<copiedQueueSize {
            guard let node = queue.dequeue() else { return }
            for linkedNode in graph[node] {
                if visited[linkedNode] == -1 {
                    visited[linkedNode] = depth
                    queue.enqueue(linkedNode)
                    queueSize += 1
                }
            }
        }
    }
}

solution()

for i in 1..<visited.count {
    print(visited[i])
}
