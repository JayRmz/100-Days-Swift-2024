import UIKit

var greeting = "Hello, playground"
/**
 Day 8: Structs, part one
 
 */

//Creating your own structs
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"

//Computed properties
struct ComputedSport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = ComputedSport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//Mutating methods
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

//Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do")) //They have a hasPrefix() method that returns true if the string starts with specific letters:
print(string.uppercased())
print(string.sorted())

//Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


/**
 Day 9: Structs, part two
 */
//Initializers
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
print(user.username)
user.username = "twostraws"
print(user.username)

//Referring to the current instance
struct PersonInstance {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var persn = PersonInstance(name: "Jay")

//Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct LazyPerson {
    var name: String
    lazy var familyTree = FamilyTree() //This creates a lazy instance, only wen needed.
    
    init(name: String) {
        self.name = name
    }
}

var ed = LazyPerson(name: "Ed")
ed.familyTree

//Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
print(Student.classSize)
var student1 = Student(name: "Jay")
var student2 = Student(name: "Carlos")
print(Student.classSize)

//Access control
struct PersonControl {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let userControl = PersonControl(id: "12345")


//Structs summary
