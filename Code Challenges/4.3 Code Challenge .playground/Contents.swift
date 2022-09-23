import UIKit

var greeting = "Hello, playground"

//In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.
// For example, if the parameters passed are ([2,2,3], [5,4,1]) the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

//my attempt
//let array1 = [2,2,3]
//let array2 = [5,4,1]
//let reducedArray1 = array1.reduce(0, { x, y in
//x * y})
//
//print(reducedArray1)


//Nathan's solution
//we are looking to make some function that takes two arrays representing dimensions of a cube.... and gives you the difference in the volume between them
//you will need another function that finds the volume of a cuboid.

func volumeOfACuboid(_ dimensions: [Int]) -> Int? {
    if dimensions.count != 3 {
        return nil //This means that if there are not 3 integers, this function will not work
    }
return dimensions[0] * dimensions[1] * dimensions[2]
}

func differenceInCuboidVolume(a: [Int], b: [Int]) -> Int? {
    if a.count != 3 || b.count != 3 {
        return nil
    }
    if let volumeA = volumeOfACuboid(a), let volumeB = volumeOfACuboid(b) {
        return abs(volumeA - volumeB)
}
//    figure out which of those two is bigger, then put the bigger one first and subtract the smaller one
   
//    abs means that you find the absolute value, so it doesn't matter which one goes first, absolute value is just how far away it is from 0
    return nil
}
if let differenceInVolume = differenceInCuboidVolume(a: [2, 2, 3], b: [5, 4, 1]) {
    print(differenceInVolume)
}
