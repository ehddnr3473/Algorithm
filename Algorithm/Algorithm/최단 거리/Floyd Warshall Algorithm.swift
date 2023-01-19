//
//  Floyd Warshall Algorithm.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/19.
//

import Foundation

func printCosts(graph: inout [[Int]]) {
    for start in 1...numberOfNodes {
        for end in 1...numberOfNodes {
            for via in 1...numberOfNodes {
                graph[start][end] = min(graph[start][end], graph[start][via] + graph[via][end])
            }
        }
    }

    for start in 1...numberOfNodes {
        for end in 1...numberOfNodes {
            if graph[start][end] == infinity {
                print("X", terminator: " ")
            } else {
                print(graph[start][end], terminator: " ")
            }
        }
        print("")
    }
}

let infinity = Int(1e9)
let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (numberOfNodes, numberOfEdges) = (inputData[0], inputData[1])


// 최종 출력할 노드간의 거리
var graph = Array(repeating: Array(repeating: infinity, count: numberOfNodes + 1), count: numberOfNodes + 1)

for index in 1...numberOfNodes {
    graph[index][index] = 0
}

// 간선에 대한 정보 입력
for _ in 0..<numberOfEdges {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let (start, end, cost) = (inputData[0], inputData[1], inputData[2])
    
    graph[start][end] = cost
}

printCosts(graph: &graph)

/*
 입력 예시
4 7
1 2 4
1 4 6
2 1 3
2 3 7
3 1 5
3 4 4
4 3 2
 
 출력 예시
0 4 8 6
3 0 7 9
5 9 0 4
7 11 2 0
 */
