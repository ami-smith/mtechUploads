import UIKit

//You get an array of numbers, return the sum of all the positive ones.
//example: [1, -4, 7, 12] -> 1 +7 + 12 = 20
//note: If there is nothing to sum, the sum is default to 0.
//my attempt:


//var numbers: ([Int]) -> Int
//let multiples = [...]
//if let numbers > [0] {
//    return 0
//} else {
//let sum = multiples.reduce(0, +)
//print("Sum of array is: ", sum)
//}

//example in class
let numbers = [1,-4,7,12]

func addPositiveIntegers(arr: [Int]) -> Int {
    var returnNum = 0
    for num in arr {
        if num > 0 {
        returnNum += num
    }
    }
    return returnNum
}

//Another example from class using reduce

func addPositiveUsingReduce(arr: [Int])-> Int {
    return arr.reduce(0) {partialResult, nextNum in
        return partialResult + (nextNum > 0 ? nextNum : 0)
    }
}
print(addPositiveIntegers(arr: numbers))
