//
//  서로소 집합 알고리즘.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/30.
//

import Foundation

func findParent(parents: [Int], root: Int) -> Int {
    // 루트 노드가 아니라면, 루트 노드를 찾을 때까지 재귀적으로 호출
    if parents[root] != root {
        return findParent(parents: parents, root: parents[root])
    }
    return root
}

// 경로 압축 기법
func advancedFindParent(parents: inout [Int], root: Int) -> Int {
    if parents[root] != root {
        parents[root] = findParent(parents: parents, root: parents[root])
    }
    return parents[root]
}

func unionParent(parents: inout [Int], a: Int, b: Int) {
    let rootOfA = findParent(parents: parents, root: a)
    let rootOfB = findParent(parents: parents, root: b)
    if rootOfA < rootOfB {
        parents[b] = rootOfA
    } else {
        parents[a] = rootOfB
    }
}

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (numberOfNodes, numberOfEdges) = (inputData[0], inputData[1])

// 부모 정보를 저장한 테이블
var parents = Array(repeating: 0, count: numberOfNodes + 1)

// 부모 테이블에서, 부모를 자기 자신으로 초기화
for index in 1...numberOfNodes {
    parents[index] = index
}

// union 연산을 각각 수행
for _ in 0..<numberOfEdges {
    let edgeData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    unionParent(parents: &parents, a: edgeData[0], b: edgeData[1])
}

// 각 원소가 속한 집합 출력
print("각 원소가 속한 집합: ", terminator: "")
for node in 1...numberOfNodes {
    print(findParent(parents: parents, root: node), terminator: " ")
}

print("")

// 부모 테이블 내용 출력
print("부모 테이블: ", terminator: "")
for index in 1...numberOfNodes {
    print(parents[index], terminator: " ")
}

print("")

/*
 입력 예시
6 4
1 4
2 3
2 4
5 6
 */

/*
 출력 예시
각 원소가 속한 집합: 1 1 1 1 5 5
부모 테이블: 1 1 2 1 5 5
 */
