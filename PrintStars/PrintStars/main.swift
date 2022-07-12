//
//  main.swift
//  PrintStars
//
//  Created by 김동욱 on 2022/07/12.
//

import Foundation

let inputData = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (col, row) = (inputData[0], inputData[1])

for _ in 0...row-1 {
    for _ in 0...col-1 {
        print("*", terminator: "")
    }
   print("\n")
}
