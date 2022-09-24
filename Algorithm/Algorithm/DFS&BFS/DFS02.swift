//
//  main.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

// 프로그래머스, 깊이/너비 우선 탐색 > 단어 변환
// https://school.programmers.co.kr/learn/courses/30/lessons/43164
import Foundation


func solution(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var visited = [Bool](repeating: false, count: tickets.count)

    var result: [String] = []

    func dfs(start: String) {
        if result.count == tickets.count {
            result.append(start)
            return
        }
        for i in 0..<tickets.count {
            if tickets[i][0] == start && !visited[i] {
                visited[i] = true
                result.append(start)
                dfs(start: tickets[i][1])
                if result.count == tickets.count + 1 {
                    return
                }
                // 재귀 종료 후 복구하고 다음 index부터 다시 진행(새로운 길 찾기)
                result.removeLast()
                visited[i] = false
            }
        }
    }

    dfs(start: "ICN")

    return result
}

//print(solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]))

