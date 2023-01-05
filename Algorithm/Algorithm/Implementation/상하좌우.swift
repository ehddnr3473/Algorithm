//
//  상하좌우.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/05.
//

// 이코테 110P 상하좌우
import Foundation

func solution(_ n: Int, _ plans: [String]) {
    var (x, y) = (1, 1)
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    let moveTypes = ["U", "D", "L", "R"]
    var nx: Int!
    var ny: Int!
    
    for plan in plans {
        for index in moveTypes.indices {
            if plan == moveTypes[index]{
                nx = x + dx[index]
                ny = y + dy[index]
            }
        }
        // 공간을 벗어나는 경우 무시
        if nx < 1 || ny < 1 || nx > n || ny > n {
            continue
        }
        // 이동 수행
        (x, y) = (nx, ny)
    }
    print(x, y)
}

//solution(5, ["R", "R", "R", "U", "D", "D"])

/* 다른 입력 예시
 5
 R R R U D D
 let inputData_1 = readLine()!.map { Int($0)! }
 let inputData_2 = readLine()!.components(separatedBy: " ")
*/
