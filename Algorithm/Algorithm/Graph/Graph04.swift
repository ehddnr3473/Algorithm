//
//  Graph04.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/07.
//

// 백준 24446
// LinkedList로 queue 구현
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, r) = (inputData[0], inputData[1], inputData[2])
var edges = [[Int]]()
var visited = Array(repeating: -1, count: n+1)
var graph: [[Int]] = Array(repeating: [], count: n+1)
let queue = DoublyLinkedList()

class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        lhs.value == rhs.value
    }
    
    let value: Int
    var previous: Node?
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class DoublyLinkedList {
    private var head: Node?
    private var tail: Node?
    var count = 0
    
    var first: Node? { head }
    var last: Node? { tail }
    var isEmpty: Bool { head == nil }
    
    func appendLast(_ node: Node) {
        if let tailNode = tail {
            tailNode.next = node
            node.previous = tailNode
        } else {
            head = node
        }
        tail = node
        
        count += 1
    }
    
    func removeFirst() -> Int? {
        guard let node = head else { return nil }
        head = node.next
        if node == tail {
            tail = nil
        }
        head?.previous = nil
        
        count -= 1
        return node.value
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
    queue.appendLast(Node(value: start))
    visited[start] = depth
    
    while !queue.isEmpty {
        depth += 1
        for _ in 0..<queue.count {
            guard let node = queue.removeFirst() else { return }
            for linkedNode in graph[node] {
                if visited[linkedNode] == -1 {
                    visited[linkedNode] = depth
                    queue.appendLast(Node(value: linkedNode))
                }
            }
        }
    }
}

//solution()
//
//for i in 1..<visited.count {
//    print(visited[i])
//}
