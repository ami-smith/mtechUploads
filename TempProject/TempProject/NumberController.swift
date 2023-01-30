//
//  NumberController.swift
//  TempProjectTests
//
//  Created by Ami Smith on 1/3/23.
//


//Build a function the returns all the even numbers in an array of numbers. The function definition is:
//func evenNumbers(numbers: [Int]) -> [Int]
//Do this exercise in pairs. Each person will write code to pass a test, refactor, and write the next test. Then you’ll switch.

import Foundation

struct NumberController {
    func evenNumbers(numbers: [Int]) -> [Int] {
          var evenNumbers = [Int]()
          for number in numbers {
            if number % 2 == 0 {
              evenNumbers.append(number)
            }
          }
          return evenNumbers
        }
    }
    

