import UIKit

class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String
    
    init(name: String, age: Int, weight: Double, favoriteColor: String) {
    self.name = name
    self.age = age
    self.weight = Double(weight)
    self.favoriteColor = favoriteColor
    }
}
class Student: Person {
    var currentClass: String
    var grade: Double
    var gpa: Double
    
    init(currentClass: String, grade: Double, gpa: Double, name: String, age: Int, weight: Double, favoriteColor: String) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}


