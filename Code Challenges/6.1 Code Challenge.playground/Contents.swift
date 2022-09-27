import UIKit

//The first century spans from the the year 1 up to and including the year 100, the second century- from the year 101 up to and including the year 200, etc.
//Task: Given a year, return the century it is in.
// Examples:
//1705 --> 18
//1900 --> 19
//1601 --> 16
//2000 --> 20

//my attempt:

//func century(year: Int) -> Int {
//    var centuryFromYear = 0
//
//    switch centuryFromYear {
//    case 1...100:
//        print("1st Century")
//    case 101-200:
//        print("2nd Century")
//    case 201...300:
//        print("3rd Century")
//    case 301-400:
//        print("4th Century")
//    case 401...500:
//        print("5th Century")
//    case 501-600:
//        print("6th Century")
//    case 601...700:
//        print("7th Century")
//    case 701-800:
//        print("8th Century")
//    case 801...900:
//        print("9th Century")
//    case 901-1000:
//        print("10th Century")
//    case 1001...1100:
//        print("11th Century")
//    case 1101-1200:
//        print("12th Century")
//    case 1201...1300:
//        print("13th Century")
//    case 1301-1400:
//        print("14th Century")
//    case 1401...1500:
//        print("15th Century")
//    case 1501-1600:
//        print("16th Century")
//
//    }
//}

//another example in class
func century(year: Int) -> Int {
    guard year > 0 else {return 0}
    
    return (year % 100 == 0) ? year/100 : (year/100) + 1
}
century(year: 1492)
century(year: 2022)
century(year: 1994)

