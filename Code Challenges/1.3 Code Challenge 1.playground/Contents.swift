import UIKit

let name = "Ami"
let age = 28

print("Hello, my name is \(name) and I am \(age) years old")


func letterCount(word: String) -> Int {
    let count = word.count
return count
}
let myWord = letterCount(word: "Hello")

//
let firstNumber = 5
let secondNumber = 13
let total = firstNumber + secondNumber
          
func addTwoInts(_firstNumber: Int, _secondNumber: Int) -> Int {
        let add = firstNumber + secondNumber
    return add
    }
let twoNums = addTwoInts(_firstNumber: 5,_secondNumber:  13)

print(twoNums)
