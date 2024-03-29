import UIKit

var greeting = "Hello, playground"


// --MARK: Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// --MARK: Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// --MARK: Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

// --MARK: Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville") //If need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let set = Set(["aardvark", "astronaut", "azalea"]) //If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"] //If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array

// --MARK: Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

// --MARK: Dictionaries default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

// --MARK: Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()
//var results = Array<Int>()

// --MARK: Enumerations
enum Result {
    case success
    case failure
}
let result4 = Result.failure

// --MARK: Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

// --MARK: Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
//let earth = Planet(rawValue: 2)

