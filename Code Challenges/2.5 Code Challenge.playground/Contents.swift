import UIKit

//create a function that finds the distance between two points on an x,y plane. The function will take in 4 parameters as double (x1, y1, x2, y2). Will return the distance as a double. Most likely you do not know the formula for finding the distance between two points. Google it.

func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    
    return sqrt((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1))
}
print(distance(x1: 3, y1: 4, x2: 2, y2: 6))
print(distance(x1: 8, y1: 2, x2: 7, y2: 9))

