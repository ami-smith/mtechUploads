import UIKit

//Create a function that takes an array<Int> and an Int, n, and returns an array<Int> containing the first up to n elements from the array.

func myArray(array: [Int], n: Int)-> [Int] {
    
    for index in array {
    print(index)
    }
    return myArray
}
myArray(array: [1,2,3,4,5], n: 3)



//Actual working function:

func firstElementsGetter(_ myArray: [Int], firstItems: Int) -> [Int] {
    return Array(myArray[..<firstItems])
}

firstElementsGetter([1,2,3,4,5], firstItems: 3)
