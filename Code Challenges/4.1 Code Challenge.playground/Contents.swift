import UIKit

var greeting = "Hello, playground"

//Write me a function string that takes a size and returns a string of alternating 1's and 0's.
//The string should start with a 1
//A string with size 6 should return: '101010'
//With a size 4 should return '1010'
//with size 12 should return '101010101010'
//The size will always be positive and will only use whole numbers.
//

//my attempt at the code challenge....

//func stringy(size: Int) -> String {
//    for size.words.enumerated() {
//        if (size % 2) * size.enumerated() {
//    print ("10")
}
}

//an actual solution to the code challenge

//    func stringy(size:Int) -> String {
//       var ones = ""
//        for index in 1...size {
//            if index % 2 == 0 {
//                ones.append("0")
//            } else {ones.append("1")
//            }
//        }
//        print(ones)
//        return ones
//    }
//stringy(size: 6)
//stringy(size: 4)
//stringy(size: 12)


//another example of how to solve the code challenge
    func stringy(size: Int) -> String {
    var on = true
    var string = ""
    
    for _ in 0..<size {
        string += on ? "1" : "0"
        on.toggle()
    }
return string
}
stringy(size: 6)

