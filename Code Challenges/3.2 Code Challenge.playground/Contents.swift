import UIKit

var greeting = "Hello, playground"
//Write a function that takes in an array of Ints. The function will not return anything. Loop through the array. If the number is eve, print "num: Even". If the number is odd, print "num: Odd". num should be replaced with the number.
//ex. Input -> [1,2,3]
//Output -> "1: Odd"
//           "2: Even"
//           "3: Odd"

var numbers: [Int] = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if (number % 2 == 0) {
        print("\(number): Even")
} else {
    print("\(number): Odd")
}
}

let myArrayOfInts = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func evenOdd(arr: [Int]) {
    for num in arr {
        if num % 2 == 0 {
            print("\(num): Even")
        } else {
        print("\(num): Odd")
    }
}
}
evenOdd(arr: myArrayOfInts)
