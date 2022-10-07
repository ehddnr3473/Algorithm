//
//  Graph05.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/07.
//

// 프로그래머스 > 그래프 > 가장 먼 노드
// https://school.programmers.co.kr/learn/courses/30/lessons/49189
import Foundation

class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        lhs.value == rhs.value
    }
    
    var previous: Node?
    var next: Node?
    var value: Int
    
    init(_ value: Int) {
        self.value = value
    }
}

class LinkedList {
    private var head: Node?
    private var tail: Node?
    var count = 0
    
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
        guard let headNode = head else { return nil }
        if headNode == tail {
            tail = nil
        }
        head = headNode.next
        headNode.next?.previous = nil
        count -= 1
        return headNode.value
    }
}

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n+1)
    var visited = Array(repeating: -1, count: n+1)
    
    for eachEdge in edge {
        graph[eachEdge[0]].append(eachEdge[1])
        graph[eachEdge[1]].append(eachEdge[0])
    }
    
    func search(_ start: Int) {
        var depth = 0
        let queue = LinkedList()
        visited[start] = depth
        queue.appendLast(Node(start))
        
        while !queue.isEmpty {
            depth += 1
            
            for _ in 0..<queue.count {
                guard let node = queue.removeFirst() else { return }
                for linkedNode in graph[node] {
                    if visited[linkedNode] == -1 {
                        visited[linkedNode] = depth
                        queue.appendLast(Node(linkedNode))
                    }
                }
            }
        }
    }
    
    func numberOfMaxDepth() -> Int {
        let maxDepth = visited.max()
        
        return visited.filter { $0 == maxDepth }.count
    }
    
    search(1)
    
    return numberOfMaxDepth()
}

print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]))
