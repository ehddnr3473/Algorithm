//
//  무방향 그래프 사이클.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/30.
//

import Foundation

// 그래프 사이클 판별
// 간선에 방향성이 없는 무방향 그래프에 서로소 집합 알고리즘을 적용
func findParent(parents: inout [Int], root: Int) -> Int {
    if parents[root] != root {
        parents[root] = findParent(parents: &parents, root: parents[root])
    }
    return parents[root]
}

func unionParent(parents: inout [Int], a: Int, b: Int) {
    let rootOfA = findParent(parents: &parents, root: a)
    let rootOfB = findParent(parents: &parents, root: b)
    
    if rootOfA < rootOfB {
        parents[rootOfB] = rootOfA
    } else {
        parents[rootOfA] = rootOfB
    }
}

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (numberOfNodes, numberOfEdges) = (inputData[0], inputData[1])

var parents = Array(repeating: 0, count: numberOfNodes + 1)

for index in 1...numberOfNodes {
    parents[index] = index
}

var cycle = false

for _ in 0..<numberOfEdges {
    let edgeData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    // 사이클이 발생한 경우 종료
    if findParent(parents: &parents, root: edgeData[0]) == findParent(parents: &parents, root: edgeData[1]) {
        cycle = true
        break
    // 사이클이 발생하지 않았다면 합집합(union) 수행
    } else {
        unionParent(parents: &parents, a: edgeData[0], b: edgeData[1])
    }
}

if cycle {
    print("사이클 발생.")
} else {
    print("사이클 발생하지 않음.")
}

/*
 입력 예시
3 3
1 2
1 3
2 3
 */

/*
 출력 예시
사이클이 발생했습니다.
 */

