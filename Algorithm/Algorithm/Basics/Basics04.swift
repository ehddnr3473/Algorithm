//
//  Basic04.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/04.
//

// OX 퀴즈
// https://school.programmers.co.kr/learn/courses/30/lessons/120907
import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    
    for expression in quiz {
        var x: Int? = nil
        var `operator`: String? = nil
        var y: Int? = nil
        var z: Int? = nil
        
        var startIndex = expression.startIndex
        for index in expression.indices {
            if expression[index] == " ", z == nil {
                if x == nil {
                    x = Int(expression[startIndex..<index])
                    startIndex = expression.index(index, offsetBy: 1)
                } else if `operator` == nil {
                    `operator` = String(expression[startIndex..<index])
                    startIndex = expression.index(index, offsetBy: 1)
                } else if y == nil {
                    y = Int(expression[startIndex..<index])
                    startIndex = expression.index(index, offsetBy: 3)
                    z = Int(expression[startIndex...expression.index(before: expression.endIndex)])
                }
            }
        }
        if let x = x, let `operator` = `operator`, let y = y, let z = z {
            if `operator` == "+", ((x + y) == z) {
                result.append("O")
            } else if `operator` == "-", ((x - y) == z) {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    
    return result
}

// 2
func operationValidation(_ quiz: String) -> String {
    let array = quiz.components(separatedBy: [" ", "="]).filter { $0 != ""}
    
    if array[1] == "+" {
        return Int(array[0])! + Int(array[2])! == Int(array[3])! ? "O" : "X"
    } else {
        return Int(array[0])! - Int(array[2])! == Int(array[3])! ? "O" : "X"
    }
}

func solution_2(_ quiz: [String]) -> [String] {
    quiz.map { operationValidation($0)}
}

//print(solution(["3 - 4 = -3", "5 + 6 = 11"]))
