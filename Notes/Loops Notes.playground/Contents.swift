import UIKit

var zoo = ["elephant", "Penguin", "Capybara", "red panda", "Aardvark"]
for animal in zoo {
    var printStatement = ""
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    if vowels.contains(animal.lowercased().first!) {
        printStatement = "The zoo contains an"
        }  else {
                printStatement = "The zoo contains a"
            }
    
    print("\(printStatement) \(animal)")
}
//new example

for (index, letter) in "Mississippi".enumerated() {
    print("\(index) letter: \(letter)")
}
//new example

for index in 1...5 {
    print(index)
}
//new example

for index in 0..<zoo.count {
    print(zoo[index])
}

// Dictionary example

var books = ["The Dictionary": 1257, "Harry Potter and the Sorcerer's Stone": 265, "Gulliver's Travels": 420]

for (title, pageNum) in books {
    print("The book \(title) has \(pageNum) pages. ")
}
//(title) is the key that matches up with the dictionary, (pageNum) is the value

/* While Loops */

var numberOfLives = 8

while numberOfLives > 0 {
    numberOfLives -= 1
    if numberOfLives == 7 || numberOfLives == 5 {
        continue
    }
    print("lives left: \(numberOfLives)")
        
    if numberOfLives == 0 {
    print("You just died")
    }
}

//repeat while loop example
var steps = 0
let wall = 2

repeat {
    print("Step")
    
    steps += 1
    
    if steps == wall {
        print("You've hit a wall!")
        break
    }
} while steps < 10


var kayakingSpots = ["Alaska", "Canada", "Hawaii", "Idaho"]
var randomNum = Int.random(in: 0...3)
print(kayakingSpots[randomNum])
for spot in kayakingSpots {
    
    print ("I like to kayak in \(spot).")
}
