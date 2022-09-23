import UIKit

var greeting = "Hello, playground"
//Write a method that will get an integer array as a parameter and will process every number from this array.
//Return a new array with processing every number of the input-array like this:
//If the number has an integer square root, take this, otherwise square the number.
//Example
//[4,3,9,7,2,1] -> [2,9,3,49,4,1]
//Notes: The input array will always contain only positive numbers, and will never be empty or nil.

//my attempt
var numbers = [2,4,5,8,6,7,1]

func squareNum(array: [Int] -> [] {
for num in array {
    if number % 2 == 0
        print
    }
}
let root = sqrt(Double(num))




//Actual way to solve it:
var numbers = [2,4,5,8,6,7,1]
func squareOrNot(arr: [Int]) -> [Int] {
    
    var newArr = arr
    for index in 0..<arr.count {
        let num = sqrt(Double(arr[index])).truncatingRemainder(dividingBy: 1)
        if num == 0.0 {
            newArr[index] = Int(sqrt(Double(newArr[index])))
        } else {
            newArr[index] *= newArr[index]
        }
    }
    return newArr
}

