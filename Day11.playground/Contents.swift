import UIKit

// MARK: Day 11: Protocols and extensions

// Protocols
protocol Identifiable {
    var id: String {get set}
    func identify() //protocol-oriented programming
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My id is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculateWages () -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()
number.isEven

// Protocol Extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// Protocol-oriented programming
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

let jayrmz = User(id: "jayrmz96")
jayrmz.identify()
