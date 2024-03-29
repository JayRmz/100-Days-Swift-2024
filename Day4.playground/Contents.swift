import UIKit
 /**
        Day 4: Loops
  */


// -- MARK: For | it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// -- MARK: While | Give it a condition to check, and its loop code will go around and around until the condition fails.
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")
      
// -- MARK: Repeat | It’s identical to a while loop except the condition to check comes at the end.
var numberRepeat = 1

repeat {
    print(numberRepeat)
    numberRepeat += 1
} while numberRepeat <= 20

print("Ready or not, here I come!")

// -- MARK: Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// -- MARK: Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// -- MARK: Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// -- MARK: Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
