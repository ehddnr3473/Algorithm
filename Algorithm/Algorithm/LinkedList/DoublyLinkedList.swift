//
//  DoublyLinkedList.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/10/07.
//

import Foundation

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
    
//    func appendFirst(_ node: Node) {
//        if let headNode = head {
//            headNode.previous = node
//            node.next = headNode
//        }
//        head = node
//
//        count += 1
//    }
    
    func appendLast(_ node: Node) {
        if let tailNode = tail {
            tailNode.next = node
            node.previous = tailNode
        } else {
            head = node
        }
        tail = node
        
        count += 1
        print("append Value: \(node.value)")
    }
    
    func removeFirst() -> Int? {
        guard let node = head else { return nil }
        head = node.next
        if node == tail {
            tail = nil
        }
        head?.previous = nil
        
        print("remove Value: \(node.value)")
        print("head: \(head?.value)")
        print("tail: \(tail?.value)")
        count -= 1
        return node.value
    }
    
    func removeLast() -> Int? {
        guard let node = tail else { return nil }
        tail = node.previous
        tail?.next = nil

        return node.value
    }
    
}
