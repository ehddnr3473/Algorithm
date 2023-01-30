//
//  팀 결성.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/30.
//

// 이코테 그래프 이론 - 팀 결성 문제
// 서로소 집합 알고리즘
import Foundation

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
        parents[b] = rootOfA
    } else {
        parents[a] = rootOfB
    }
}

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (numberOfStudents, numberOfOperations) = (inputData[0], inputData[1])

var parents = Array(repeating: 0, count: numberOfStudents + 1)
var result = [String]()

for index in parents.indices {
    parents[index] = index
}

for _ in 0..<numberOfOperations {
    let operation = readLine()!.components(separatedBy: " ").map { Int($0)! }
    if operation[0] == 0 {
        unionParent(parents: &parents, a: operation[1], b: operation[2])
    } else {
        if findParent(parents: &parents, root: operation[1]) == findParent(parents: &parents, root: operation[2]) {
            result.append("YES")
        } else {
            result.append("NO")
        }
    }
}

for index in result.indices {
    print(result[index])
}

/*
 입력 예시
7 8
0 1 3
1 1 7
0 7 6
1 7 1
0 3 7
0 4 2
0 1 1
1 1 1
 */

/*
 출력 예시
NO
NO
YES
 */
