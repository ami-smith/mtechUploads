/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var random: [Any] = [5, "Bill", 6.7, 9, false, "cool beans", true]
print(random)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for index in random {

if let integer = index as? Int {
    print("The integer has a value of \(integer).")
}
    if let string = index as? String {
        print("The string says \(string).")
    }
    if let double = index as? Double {
        print("The double has a value of \(double).")
    }
    if let boolean = index as? Bool {
        print("The Boolean is \(boolean).")
    }
}


//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var myDictionary: [String: Any] = ["Bill": 5, "child": false, "friend": "My cool friend Junne", "cool beans": true]
print(myDictionary)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for index in myDictionary {
    if let doubleVar = index as? Int || Double {
        
        return nil

    print(doubleVar * 2)
    

if let bool == true {
    return total += 2
} else if let bool == false {
    return total -= 3
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
        var total2: Double = 0
        

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
