import UIKit

//return the Nth even number.
//example(Input --> Output)
//1 --> 0(the first even number is 0)
//3--> 4 (the 3rd even number is 4 (0,2,4)
//100 --> 198
//1298734 --> 2597466
//the input will not be 0.

////my attempt
//func evenNumber (n: Int) -> Int {
//    var data = [num, for num in range(0, n* 2) if num % 2 == 0]
//    return data [n - 1]
//}

//class example
//func returnNthEven(n: Int) -> Int {
//    let nEvenNum = (n-1) * 2
//    return nEvenNum
//}
//print(returnNthEven(n: 2))
//print(returnNthEven(n: 3))
//print(returnNthEven(n: 100))
//print(returnNthEven(n: 1298734))


//other class example
func double(position: Int) -> Int {
    var int = 0
    
    for _ in 1..<position {
        int += 2
    }
    return int
}
double(position: 3)
