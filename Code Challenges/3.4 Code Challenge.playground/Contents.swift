import UIKit

var greeting = "Hello, playground"
//Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

func turnToBinaryFromString(bogusString: String) -> String {
    var newString = ""
    
    for char in bogusString {
        if let intValue = char.wholeNumberValue {
            if intValue < 5 {
                newString += "0"
            } else if intValue >= 5 {
                newString += "1"
            }
        }
    }
    return newString
}
let result = turnToBinaryFromString(bogusString: "0123456789")
print(result)

//new example

func fakeBinary(str: String) -> String {
    var arr = Array(str)
    for index in 0..<arr.count {
        let num = Int(String(arr[index]))!
        if num < 5 {
            arr[index] = "0"
        } else {
            arr[index] = "1"
        }
    }
    return String(arr)
}
