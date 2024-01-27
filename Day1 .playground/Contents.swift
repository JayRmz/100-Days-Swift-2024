import UIKit


// --MARK: Variables
var greeting = "Hello, playground"
greeting = "Goodbye!"

// --MARK: Strings And Ints
var age = 38
var population = 8_000_000

// --MARK: Multiline String
var str1 = """
This goes
over multiple
lines
"""
var str2 = """
This goes \
over multiple \
lines
"""

// --MARK: Doubles and Booleans
var pi = 3.141 //Double
var awesome = false //Boolean

// --MARK: String interpolation
var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(str)"

// --MARK: Constants
let taylor = "swift"
// XCODE ERROR: taylor = "laughter" // let/constant cannot be changed

// --MARK: Type annotations
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
