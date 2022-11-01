/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("You ran \(distance) miles in \(time) minutes, with an elevation increase of \(elevation) feet.")
    }
}
let todaysWorkout = RunningWorkout(distance: 2, time: 20, elevation: 5000)

todaysWorkout.postWorkoutStats()
//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int = 0
    var goal: Int
    
    mutating func increment() {
        steps += 1
    }
    mutating func increment(by amount: Int) {
        steps += 1
    }
}

var todaysSteps = Steps(steps: 4000, goal: 10000)
todaysSteps.increment(by: 1)
print(todaysSteps.steps)
print(todaysSteps.steps)

    
//needs to be incrementing by 1 every time, needs more work. I found this example on p. 194
/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
