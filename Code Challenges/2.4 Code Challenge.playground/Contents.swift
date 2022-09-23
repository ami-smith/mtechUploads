import UIKit

var greeting = "Hello, playground"
//Create a Person value type with the following attributes and behaviors:
//Attributes: name, age, height, weight
//Behaviors:
//greeting: Print "Hello, my name is <name>, and I am <age> years old."
//birthday age by one

struct Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    
    init(name: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        }
    func greeting() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
    mutating func birthday() {
            return age += 1
        }
}
var personOne = Person(name: "Bob", age: 45, height: 6.1, weight: 180)
personOne.greeting()
personOne.birthday()
personOne.greeting()
