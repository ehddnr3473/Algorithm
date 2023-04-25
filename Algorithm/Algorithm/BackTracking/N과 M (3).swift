//
//  N과 M (3).swift
//  Algorithm
//
//  Created by 김동욱 on 2023/04/25.
//

// 백준 15651번 N과 M (3)
// https://www.acmicpc.net/problem/15651
import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let (n, m) = (inputData[0], inputData[1])

var s = [Int]()
var result = [String]()

func dfs() {
    if s.count == m {
        result.append(s.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in 1...n {
        s.append(i)
        dfs()
        _ = s.popLast()
    }
}

//dfs()

/*
 이전의 N과 M문제와 달리, 시간 초과 발생.
 - 각각의 조합을 만들어낼 때마다 바로 출력하기보다는 모든 조합을 만들어낸 후에 한 번에 결과를 출력하면 출력에 드는 비용을 줄일 수 있음.
 - 조합을 만들어낼 때마다 출력하면, 출력 버퍼에 데이터를 쓰는 작업을 수행하고, 버퍼가 가득 차거나 프로그램이 종료될 때까지 기다리는 작업을 반복하므로, 출력에 드는 비용이 높아짐.
 - 반면에, 모든 조합을 만들어낸 후에 한 번에 결과를 출력하면, print() 함수를 한 번만 호출하므로 출력 버퍼에 데이터를 쓰는 작업과 기다리는 작업을 한 번만 수행하면 됩니다. 따라서, 출력에 드는 비용이 줄어들게 됨.
 */
//print(result.joined(separator: "\n"))
