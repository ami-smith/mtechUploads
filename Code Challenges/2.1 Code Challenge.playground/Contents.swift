import UIKit

var greeting = "Hello, playground"

//Create a function that finds the area of a circle. The function will take in an Int as a parameter. This will be the radius of the circle...
//The function should return a Double, which will be the area of the circle. (Use 3.14 as pi)

func circle (radius: Int) -> Double {
    let pi = 3.14
    return Double(pi) * Double(radius) * Double(radius)
    
}
 circle (radius: 6)
