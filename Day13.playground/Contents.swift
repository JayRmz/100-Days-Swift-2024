import UIKit

// MARK: 100 Days of Swift
// MARK: Day 13 - Swift review I


// Variables and constants
var name = "Tim McGraw"
name = "Romeo"

let nameC = "Tim McGraw"
//nameC = "Romeo" // Error


// Types of Data
var age: Int
age = 25

var latitude: Double // Has highest accouracy
latitude = 36.166667

var longitude: Float
longitude = -86.783333

var stayOutTooLate: Bool
stayOutTooLate = true


// Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

var c = a + b

c > 3
c >= 3
c > 4
c < 4

name == "Tim McGraw"

//var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

name == "Tim McGraw"
name != "Tim McGraw"


// String interpolation
print("Your name is \(name), your age is \(age), and your latitude is \(latitude)")


// Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]

type(of: songs)

var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
//var both = songs + songs2
//both += ["Everything has Changed"]


// Dictionaries
var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person["middle"]
person["month"]


// Conditional Statements
var action: String
//var person = "hater"

//if person == "hater" {
//    action = "hate"
//}

//var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}


// Loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)


//var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    print("\(people[i]) gonna \(actions[i])")
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}

// Switch case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")
    
case 1:
    print("You just released iTunes Live From SoHo")
    
case 2:
    print("You just released Speak Now World Tour")
    
default:
    print("Have you done something new?")
}


let developer = "Jay"

switch developer {
case "Jay":
    print("Hi Jay")
case "Chony":
    print("You're not a developer")
case "Rubs":
    print("Hello you")
default:
    print("No developer managed")
}
