import UIKit



class Pet {
    var type = ""
    var numberOfLegs = 0
    var numberOfWings = 0
}

class Dog: Pet {
    override init() {
        super.init()
        
        self.type = "dog"
        self.numberOfLegs = 4
        self.numberOfWings = 0
    }
    
    func walk() {
        
    }
}

class Cat: Pet {
    override init() {
        super.init()
        
        self.type = "cat"
        self.numberOfLegs = 4
        self.numberOfWings = 0
    }
    
    func jumpOverMoon() {
        
    }
}

class Bird: Pet {
    override init() {
        super.init()
        
        self.type = "bird"
        self.numberOfLegs = 2
        self.numberOfWings = 2
    }
    
    func payTaxes() {
        
    }
}



let pets: [Pet] = [Dog(), Bird(), Cat()]

for pet in pets {
    
    if let dog = pet as? Dog {
        dog.walk()
    } else if let cat = pet as? Cat {
        cat.jumpOverMoon()
    } else if let bird = pet as? Bird {
        bird.payTaxes()
    }
}



