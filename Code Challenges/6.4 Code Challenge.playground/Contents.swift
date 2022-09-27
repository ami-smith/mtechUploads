import UIKit

//Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
//Example:
//summation(2) -> 3
//1+2
//summation(8) -> 36
//1+2+3+4+5+6+7+8

//my attempt:

//func sumOfNumbers(num: Int) -> Int {
//    var num = 1
//    var sum = 1 += num
//    while true {
//
//    return sum
//}
//}
//print(sumOfNumbers(num: 8))

//first example in class:

func summation(n: Int) -> Int {
    guard n > 0 else {return n}
    
    if (n==1) {
        return n
    }
    return n + summation(n: n - 1)
}
summation(n: 8)

//another example from class
func summationSecond(n: Int) -> Int {
    guard n > 0 else {return n}
    
    var runningTotal = 0
    
    for i in 1...n {
        runningTotal += i
    }
    return runningTotal
}
summationSecond(n: 8)

func summationThird(n: Int) -> Int {
    guard n > 0 else {return n}
    var runningTotal = 0
    
    let list = Array(1...n)
    for (_, element) in list.enumerated() {
        runningTotal += element
    }
    return runningTotal
}
summationThird(n: 8)

//1... n = 1 to infinite number
