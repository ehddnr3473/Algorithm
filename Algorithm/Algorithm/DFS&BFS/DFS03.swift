//
//  main.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/25.
//

// 프로그래머스, 깊이/너비 우선 탐색 > 여행 경로
// https://school.programmers.co.kr/learn/courses/30/lessons/43164
import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var visited = Array(repeating: false, count: tickets.count)
    var result = [String]()
    
    func search(_ start: String) {
        if result.count == tickets.count {
            result.append(start)
            return
        }
        
        for index in tickets.indices {
            if !visited[index] && tickets[index][0] == start {
                result.append(start)
                visited[index] = true
                search(tickets[index][1])
                
                if result.count == tickets.count + 1 {
                    return
                }
                
                visited[index] = false
                result.removeLast()
            }
        }
    }
    
    search("ICN")
    
    return result
}

//print(solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]))
