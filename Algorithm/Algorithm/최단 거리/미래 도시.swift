//
//  미래 도시.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/19.
//

// 이코테 259P
import Foundation

func solution(_ graph: inout [[Int]], via: Int, end: Int) -> Int {
    for start in 1...numberOfNodes {
        for end in 1...numberOfNodes {
            for via in 1...numberOfNodes {
                graph[start][end] = min(graph[start][end], graph[start][via] + graph[via][end])
            }
        }
    }
    
    printGraph(graph, .calculated)
    
    let minCost = graph[1][via] + graph[via][end]
    
    if minCost >= infinity {
        return -1
    } else {
        return minCost
    }
}

func printGraph(_ graph: [[Int]], _ style: GraphStyle) {
    print("-------------------")
    switch style {
    case .initial:
        print("<초기 그래프>")
    case .calculated:
        print("<최소 이동 시간 그래프>")
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
    print("-------------------")
}

var inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (numberOfNodes, numberOfEdges) = (inputData[0], inputData[1])
let infinity = Int(1e9)
var graph = Array(repeating: Array(repeating: infinity, count: numberOfNodes + 1), count: numberOfNodes + 1)

for index in 1...numberOfNodes {
    graph[index][index] = 0
}

for _ in 0..<numberOfEdges {
    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let (start, end) = (inputData[0], inputData[1])
    
    graph[start][end] = 1
    graph[end][start] = 1
}

inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }

let (end, via) = (inputData[0], inputData[1])
printGraph(graph, .initial)
print(solution(&graph, via: via, end: end))

/*
 입력 예시 1
5 7
1 2
1 3
1 4
2 4
3 4
3 5
4 5
4 5
 
 출력 예시 1
3
 
 입력 예시 2
4 2
1 3
2 4
3 4
 
 출력 예시 2
-1
 */

enum GraphStyle {
    case initial
    case calculated
}
