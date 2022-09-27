import UIKit

var greeting = "Hello, playground"

struct Person {
    var name: String
}
let firstPerson = Person(name: "Derek Zoolander")
print (firstPerson.name)


class Model {
    var name = ""
    var age: Int = 0
    var height: Double = 0.0
}
var model1 = Model()

model1.name = "Derek"
model1.age = 30
model1.height = 6.0

print("Name: \(model1.name), Age: \(30), Height: \(6.0)")

class Professional: Model {
    var isFamous = true
}


