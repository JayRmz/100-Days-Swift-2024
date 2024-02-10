import UIKit

var greeting = "Hello, playground"
/**
    Day 6: Closures Pt. I
 */

//Creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingTo("London")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//Trailing closure syntax
travel() {
    print("I'm driving in my van")
}

travel {
    print("I'm driving in my bus")
}
