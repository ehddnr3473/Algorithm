//
//  Basics01.swift
//  Algorithm
//
//  Created by 김동욱 on 2023/01/04.
//

// 프로그래머스, 영어가 싫어요
// https://school.programmers.co.kr/learn/courses/30/lessons/120894?language=swift
import Foundation

func solution(_ numbers: String) -> Int64 {
    var numbers = numbers
    var result = ""
    let startIndex = numbers.startIndex
    var count = 0
    
    while numbers.count != 0 {
        let endIndex = numbers.index(startIndex, offsetBy: count)
        let numberString = String(numbers[startIndex...endIndex])
        guard let number = verify(numberString) else {
            count += 1
            continue
        }
        result += number
        numbers.removeSubrange(startIndex...endIndex)
        count = 0
    }
    
    return Int64(result)!
}

func solution_2(_ numbers: String) -> Int64 {
    let numberDictionary = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
    var result = ""
    var number = ""
    for n in numbers {
        number += String(n)
        if numberDictionary.keys.contains(number) {
            result += String(numberDictionary[number]!)
            number = ""
        }
    }
    return Int64(result)!
}

func verify(_ numberString: String) -> String? {
    switch(numberString) {
    case "zero":
        return "0"
    case "one":
        return "1"
    case "two":
        return "2"
    case "three":
        return "3"
    case "four":
        return "4"
    case "five":
        return "5"
    case "six":
        return "6"
    case "seven":
        return "7"
    case "eight":
        return "8"
    case "nine":
        return "9"
    default:
        return nil
    }
}

//print(solution("onetwothreefourfivesixseveneightnine"))
