/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    let ram: Int
    let yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        //if condition to check if ram is > 0 && yearMan > 1970 && < 2020
        if ram > 0 && yearManufactured > 1970 && yearManufactured < 2020 {
        self.ram = ram
        self.yearManufactured = yearManufactured
        } else {
            //we can return nil (or make it "fail") if it doesn't meet our requirements...
            return nil
        }
    }
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
if let computer = Computer(ram: 2, yearManufactured: 1980) {
    print(computer.ram)
    print(computer.yearManufactured)
}
if let computer2 = Computer(ram: 0, yearManufactured: 1990) {
    print(computer2.ram)
print(computer2.yearManufactured)
}

let computer3 = Computer(ram: 7, yearManufactured: 2021)
if let computer3 = computer3 {
    print(computer3.ram)
    print(computer3.yearManufactured)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
