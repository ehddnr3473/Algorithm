//
//  성적이 낮은 순서로 학생 출력하기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/12.
//

// 이코테 180P
import Foundation

func solution() {
    let n = Int(readLine()!)!
    var students = [(String, Int)]()
    for _ in 0..<n {
        let inputData = readLine()!.components(separatedBy: " ")
        students.append((inputData[0], Int(inputData[1])!))
    }
    
    students = students.sorted { $0.1 < $1.1 }
    
    for student in students {
        print(student.0, separator: " ")
    }
    print("")
}

//solution()
