import UIKit
//Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.
//Numerical Score
//90 <= score <= 100 A
//80 <= score <90 B
//70<= score < 80 C
//60 <= score < 70 D
//0<= score <60 F
//Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.


//my first attempt:

//func getGrade(_s1: Int, _s2: Int, _s3: Int) -> String {
//    var sum = 0
//    for number in getGrade {
//        sum += number
//
//    var average: String = String(Sum) / String(numbers.count)
//    return "average"
//    }
//}

// my second attempt:

//func getGrade(_s1: Int, _s2: Int, _s3: Int) -> String {
//    var score = (_s1 + _s2 + _s3) / 3
//    if score 0 >= 90 && <= 100 {
//        return "A"
//        if score >= 80 && < 90 {
//        return "B"
//            if score >= 70 && < 80 {
//        return "C"
//                if score >= 60 && < 70 {
//        return "D"
//                    if score >= 0 && < 60 {
//        return "F"
//}
//                }
//            }
//        }
//    }
//}


// example in class
func getGrade(_s1: Int, _s2: Int, _s3: Int) -> String {
    let average = (_s1 + _s2 + _s3) / 3
    var returnMessage = ""
    
    if average > 89 {
        return "A"
    } else if average > 80 {
        return "B"
    } else if average > 70 {
        return "C"
    } else if average > 60 {
        return "D"
    } else {
        return "F"
    }
    }
print(getGrade(_s1: 78, _s2: 89, _s3: 70))
