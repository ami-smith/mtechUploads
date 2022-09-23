import UIKit

struct Collection {
    let products : [Product]
    let collectionTitle: String
    
    init(products: [Product], collectionTitle: String) {
        self.products = products
        self.collectionTitle = collectionTitle
    }
}
struct Product {
    let title: String
    let price: Double
    
    init(title:String, price:Double) {
        self.title = title
        self.price = price
    }
}

let redRing = Product(title: "Red Ring", price: 5.50)
let blueRing = Product(title: "Blue Ring", price: 6.00)

let ringCollection = Collection(products: [redRing, blueRing], collectionTitle: "Ring Products")

//new example

struct Person {
    let name: String
    let age: Double
    let hobby: String
    let height: Double
    
    init(firstName: String, lastName: String, age: Double, hobby: String, height: Double) {
        self.name = firstName + lastName
        self.age = age
        self.hobby = hobby
        self.height = height
    }
}

let ami = Person(firstName: "Ami", lastName: "Smith", age: 28, hobby: "kayaking", height: 5.7)
print(ami.age)
print(ami.height)

//new example

struct Firearm {
    let barrelLength: Double
    let ammoType: String
    let lengthOfGun: Double
    
    init(barrelLength: Double, ammoType: String, lengthOfPull: Double){
        self.barrelLength = barrelLength
        self.ammoType = ammoType
        self.lengthOfGun = lengthOfPull + barrelLength
    }
}

let austinsShotgun = Firearm(barrelLength: 28.00, ammoType: "12 Gauge", lengthOfPull: 13.0)
print(austinsShotgun.lengthOfGun)

//new example

struct House {
    let sqrFootage: Double
    let houseType: String
    let stories: Int
    
    init(sqrFootage: Double, houseType: String, stories: Int) {
        self.sqrFootage = sqrFootage
        self.houseType = houseType
        self.stories = stories
    }
}
let myHouse = House(sqrFootage: 10_000, houseType: "Mansion", stories: 3)
print(myHouse.sqrFootage)

// new example

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        width * height
    }
}
let squareSize = Size(width: 5, height: 3)

print(squareSize.area())

// new example

