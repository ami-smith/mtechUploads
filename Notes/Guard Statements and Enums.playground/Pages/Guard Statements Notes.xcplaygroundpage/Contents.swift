import UIKit

let birthdayIsToday = true
let invitedGuests: [String] = []
let cakeCandlesLit = true
//guard condition else { return }

func singHappyBirthday() {
guard birthdayIsToday else {
    print("No birthday today")
    return
}
guard !invitedGuests.isEmpty else {
    print("Guests haven't arrived yet")
    return
}
guard cakeCandlesLit else {
    print("Need to light the candles")
    return
}
print("Sing Happy Birthday")
}
singHappyBirthday()
//func singHappyBirthday()
//    if birthdayIsToday {
//        if !invitedGuests.isEmpty{
//            if cakeCandlesLit{
//                print("Happy Birthday!")
//            }else {
//                print("Need to light the candles")
//            } else {
//                print("Guests haven't arrived yet.")
//        }
//        } else {
//}print("No birthday today")
// this is a bad and messy example. Use guard statements instead to make it look nicer.



//new example

func divide(_ number: Double, by divisor: Double) {
//    if divisor != 0.0 {
//        let result = number / divisor
//        print(result)
//    }
    guard divisor != 0.0 else {
        return
    }
    let result = number / divisor
    print(result)
}
divide(3.2, by: 1.2)

//new example
//
//if let eggs = goose.eggs {
//    print("The goose laid \(eggs.count) eggs.")
//}
//guard let eggs = goose.eggs else { return }
//print("The goose laid \(eggs.count) eggs.")

//new example

func processBook(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title,
        let thePrice = price,
        let thePage = pages else {
        return
    }
        print("\(theTitle) costs $\(thePrice) and has \(thePage) pages. ")
    }
processBook(title: "Swift For Dummies", price: 19.95, pages: 123)
