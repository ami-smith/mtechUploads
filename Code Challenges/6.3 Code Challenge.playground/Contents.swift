import UIKit

//Clock shows h hours, m minutes, and s seconds after midnight. Your task is to write a function which returns the time since midnight in milliseconds.
//example:
// h = 0
// m = 1
// s = 1
// result = 6100

func timeSinceMidnight(hour: Int, min: Int, sec: Int) -> Int {
    
    return (hour * 3600000) + (sec * 1000) + (min * 60000)
}
timeSinceMidnight(hour: 1, min: 45, sec: 40)
