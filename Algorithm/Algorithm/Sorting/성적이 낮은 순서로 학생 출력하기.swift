//
//  성적이 낮은 순서로 학생 출력하기.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/12.
//

// 이코테 180P
import Foundation

//김동욱 50
//비비 30
//만도스 55
//꾸리꿀 99

let n = Int(readLine()!)!
var students = [(String, Int)]()
for _ in 0..<n {
    let inputData = readLine()!.components(separatedBy: " ")
    students.append((inputData[0], Int(inputData[1])!))
}

// 표준 라이브러리
func solution() {
    students = students.sorted { $0.1 < $1.1 }
    
    for student in students {
        print(student.0, separator: " ")
    }
    print("")
}

// 선택 정렬
func solution_selection() {
    for i in students.indices {
        var minIndex = i
        for j in i..<students.count {
            if students[minIndex].1 > students[j].1 {
                minIndex = j
            }
        }
        students.swapAt(i, minIndex)
    }
}

// 삽입 정렬
func solution_insertion() {
    for i in 1..<students.count {
        for j in stride(from: i, to: 0, by: -1) {
            if students[j].1 < students[j-1].1 {
                students.swapAt(j, j-1)
            } else {
                break
            }
        }
    }
}

// 퀵 정렬
func solution_quick(_ start: Int, _ end: Int) {
    
    if start >= end {
        return
    }
    
    let pivot = start
    var left = start + 1
    var right = end
    
    while left <= right {
        while left <= end && students[left].1 <= students[pivot].1 {
            left += 1
        }
        
        while right > start && students[right].1 >= students[pivot].1 {
            right -= 1
        }
        
        if left > right {
            students.swapAt(right, pivot)
        } else {
            students.swapAt(left, right)
        }
    }
    
    solution_quick(start, right-1)
    solution_quick(right+1, end)
}



// 계수 정렬
func solution_count() {
    var countArray = Array(repeating: [String](), count: (students.max { $0.1 < $1.1 }!.1 + 1))
    
    for student in students {
        countArray[student.1].append(student.0)
    }
    
    print(countArray)
    for i in countArray.indices {
        for j in countArray[i].indices {
            print(countArray[i][j], terminator: " ")
        }
    }
    print("")
}

solution_quick(0, students.count-1)
for student in students {
    print(student.0, separator: " ")
}
print("")

//solution()
