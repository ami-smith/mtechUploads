import UIKit

var greeting = "Hello, playground"
// Code Challenge
// Create a function that takes in an array of Int's as a parameter
// You will need to multiple each Int in the array by 5.
// The function will return the array of new Ints.

func multiplyBy5(numbersArray: [Int]) -> [Int] {
   var newNumbersArray = [Int]()
    for number in numbersArray {
        let newNumber = number * 5
        newNumbersArray.append(newNumber)
    }
    return newNumbersArray
}
multiplyBy5(numbersArray: [1, 2, 3, 4, 5, 6, 7])
    
