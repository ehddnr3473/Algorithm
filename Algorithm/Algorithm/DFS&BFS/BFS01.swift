//
//  main.swift
//  Algorithm
//
//  Created by 김동욱 on 2022/09/19.
//

// 프로그래머스, 깊이/너비 우선 탐색 > 단어 변환
// https://school.programmers.co.kr/learn/courses/30/lessons/43163
import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var queue = [String]()
    var result = -1
    var visited = Array(repeating: false, count: words.count)
    var indexOfVisited = 0
    
    func verify(_ word: String, _ comparedWord: String) -> Bool {
        var matchCount = 0
        
        for i in word.indices {
            if word[i] == comparedWord[i] {
                matchCount += 1
            }
        }
        
        if matchCount + 1 == word.count {
            return true
        } else {
            return false
        }
    }
    
    func search(_ start: String) -> Int {
        queue.append(start)
        
        while !queue.isEmpty {
            result += 1
            
            for _ in 0..<queue.count {
                let word = queue.removeFirst()
                
                if word == target {
                    return result
                }
                
                for comparedWord in words {
                    indexOfVisited = words.firstIndex(of: comparedWord)!
                    if verify(word, comparedWord) && !visited[indexOfVisited] {
                        visited[indexOfVisited] = true
                        queue.append(comparedWord)
                    }
                }
            }
        }
        return 0
    }
    return search(begin)
}

//print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
