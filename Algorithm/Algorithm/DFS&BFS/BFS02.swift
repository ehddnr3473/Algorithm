//
//  main.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

// 백준 2178 미로탐색
import Foundation

let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m) = (inputData[0], inputData[1])
var mazeArray = [[Int]]()
var queue = [Position]()
var visited = [[Bool]]()
var directionForNext = [[0, -1], [1, 0], [0, 1], [-1, 0]]
var depth = 0


struct Position {
    var x: Int
    var y: Int
}

func search(_ startPosition: Position) -> Int {
    visited[startPosition.x][startPosition.y] = true
    queue.append(startPosition)

    while !queue.isEmpty {
        depth += 1
        for _ in 0..<queue.count {
            let nowPosition = queue.removeFirst()
            if nowPosition.x == n - 1 && nowPosition.y == m - 1 {
                return depth
            }

            for direction in directionForNext {
                let nextPosition = Position(x: nowPosition.x + direction[0], y: nowPosition.y + direction[1])
                let inRange = nextPosition.x >= 0 && nextPosition.x < n && nextPosition.y >= 0 && nextPosition.y < m

                if inRange && !visited[nextPosition.x][nextPosition.y] && mazeArray[nextPosition.x][nextPosition.y] == 1 {
                    queue.append(nextPosition)
                    visited[nextPosition.x][nextPosition.y] = true
                }
            }
        }
    }
    return depth
}

func solution() -> Int{
    for _ in 0..<n {
        mazeArray.append(Array(readLine()!.map { Int(String($0))! }))
    }

    visited = Array(repeating: Array(repeating: false, count: m), count: n)

    return search(Position(x: 0, y: 0))
}

//print(solution())
