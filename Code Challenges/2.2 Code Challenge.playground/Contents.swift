import UIKit

var greeting = "Hello, playground"
//Create a rectangle struct. will have two int properties, sideA and sideB. Create two functions inside the struct. An area function and a perimiter function. Each function will return an int for the area of the rectangle and the perimeter of the rectangle.


struct Rectangle {
    var sideA: Int
    var sideB: Int
    
    func area() -> Int {
        return self.sideA * self.sideB
    }
        
    func perimeter() -> Int {
        return self.sideA * 2 + self.sideB
    }
    
    mutating func scale(by num: Int) {
        self.sideA += num
        self.sideB += num
    }
    }
let myShape = Rectangle(sideA: 6, sideB: 4)
let area = myShape.area()
let perimeter = myShape.perimeter()
    


