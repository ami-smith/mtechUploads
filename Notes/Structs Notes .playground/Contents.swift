import UIKit

var greeting = "Hello, playground"
//example

struct Person {
    var name: String
    
    func sayHello() {
        print("Hello there! My name is \(name)!")
    }
}
//Instances
let person = Person(name: "Jasmine")
print(person.name)
person.sayHello()

struct Shirt {
    var size: String
    var color: String
    
    let myShirt = Shirt(size:"XL", color "Blue")
    let yourShirt = Shirt(size: "L", color "Green")
}
// Initializers

let string = String.init() is the same as ""
let integer = Int.init() is the same as 0
let bool = Bool.init() is the same as True
///

//Default Values
struct Odometer {
    var count: Int = 0
}
 let odometer = Odometer()
print(odometer.count)

// new example
//you don't need a default case with an enum
enum BreadType {
    case white
    case wheat
}
struct Sandwich {
    var bread: String = "white"
    let tomato: Bool
    let lettuce: Bool
    
    init(tomato: Bool, lettuce: Bool) {
        self.tomato = tomato
        self.lettuce = lettuce
    }

}

let hamSammy = Sandwich(tomato: true, lettuce: false)

//


