import UIKit

var greeting = "Hello, playground"
//Your task is to find the first element of an array that is not consecutive.
//By not consecutive we mean not exactly 1 larger than the previous element of the array.
//E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive numbers but 6 is not, so that's the first non-consecutive number.
//If the whole array is consecutive then return nil.
//The array will always have at least 2 elements and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!

//my attempt:

//var numbers = [1,2,3,5,7,8]
//if numbers.consecutive == true {
//    print(nil)
//}

//actual solution

func firstNonConsecutiveNumber(in array: [Int]) -> Int? {
//    go inside the array and compare every number to the previous number. The new number should be +1 from the previous number. If it is, great, if not, return the new number. If we go through the whole array and don't find a non-consecutive, then we will return nil.
   var comparisonNumber = array.first! //(Int? -> Int)
//    if array [1,2,3], dropFirst() is going to give us [2,3]
    for int in array.dropFirst() {
        if int != comparisonNumber + 1 {
            return int
        } else {
            comparisonNumber = int
        }
    }
    return nil
}
firstNonConsecutiveNumber(in: [1,2,3,4,6,7,8])

firstNonConsecutiveNumber(in: [-1,0,1,4])
