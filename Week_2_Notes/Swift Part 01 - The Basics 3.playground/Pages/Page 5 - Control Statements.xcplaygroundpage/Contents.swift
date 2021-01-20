//: [Previous](@previous)

import Foundation

//: ### Program 4.1: Using an if-else Statement
var x = 7.5, y = 3.0
if y != 0 {
    print("\(x)/\(y) is \(x/y)")
} else {
    print("\(x)/\(y) is undefined")
}

y = 0.0
if y != 0 {
    print("\(x)/\(y) is \(x/y)")
} else {
    print("\(x)/\(y) is undefined")
}


//: ### Program 4.2: Using while Loops
let N = 100
var sum = 0
var i = 1
while i <= N {
    sum += i
    i += 1
}
print("sum =", sum)

var val = 0.0
i = 1
while i < N {
    val += 1.0 / Double(i)
    i += 1
}
print("val =", val)


//: ### Program 4.3: Using a while Loop
// Euler's number
var n = 1
var t = 1.0, e = 1.0
while t > 1e-10 {
    var f = 1
    for i in 1 ... n { // calculate n!
        f *= i
    }
    t = 1.0 / Double(f)
    e += t
    n += 1
}
print(e)


//: ### Program 4.4: Using a repeat Loop
n = 1
e = 1.0
repeat {
    var f = 1
    for i in 1...n { // calculate n!
        f *= i
    }
    t = 1.0 / Double(f)
    e += t
    n += 1
} while t > 1e-10
print(e)


//: ### Program 4.5: Using for Loops
sum = 0
for i in 1 ... N {
    sum += i
}
print("sum = \(sum)")

val = 0.0
for i in 1 ..< N {
    val += 1.0 / Double(i)
}
print("val =", val)


//: ### Program 4.6: Using Range in a for Loop
for i in (1...10).reversed() {
    print(i)
}

//: ### Program 4.7: Using an Anonymous Variable in a for Loop
var powerOfTwo = 1
for _ in 1 ... 10 {
    powerOfTwo *= 2
}
print(powerOfTwo)


//: ### Program 4.8: Linear Search
let largest25EuropeanCities = [
    "London",
    "Berlin",
    "Madrid",
    "Rome",
    "Paris",
    "Bucharest",
    "Vienna",
    "Budapest",
    "Hamburg",
    "Warsaw",
    "Barcelona",
    "Munich",
    "Milan",
    "Prague",
    "Sofia",
    "Brussels",
    "Birmingham",
    "Cologne",
    "Naples",
    "Stockholm",
    "Turin",
    "Marseille",
    "Amsterdam",
    "Valencia",
    "Zagreb"
]

let searches = [
    "Rome", "Venice", "Barcelona", "Seville"
]
for city in searches {
    var found = false
    for c in largest25EuropeanCities {
        if c == city {
            found = true
            break
        }
    }
    print(city, "is", found ? "found" : "not found")
}

//: ### Program 4.9: Using a Stride in a for Loop
for i in stride(from: 1, to: 10, by: 3) {
    print(i)
}

//: ### Program 4.10: Using a Stride in a for Loop
for i in stride(from: 1, through: 10, by: 3) {
    print(i)
}

//: ### Program 4.11: Using a Negative Stride in a for Loop
for i in stride(from: 3, to: 0, by: -1) {
    print(i)
}

//: ### Program 4.12: Using a Floating-Point Stride in a for Loop
for i in stride(from: 0.0, through: Double.pi, by: Double.pi/4) {
    print(i)
}

//: ### Program 4.13: Control Transfer Statments
// Finding all the prime numbers from 0 to 100
for n in 0 ... 100 {
    var isPrime = true
    if n < 2 || n > 2 && n % 2 == 0 {
        continue   // continue to the next iteration of the for loop
    }
    var i = 2
    while i * i < n {
        if n % i == 0 {
            isPrime = false
            break   // terminate the current while loop
        }
        i += 1
    }
    if isPrime {
        print(n, "is a prime number")
    }
}

//: ### Program 4.14: A Simple switch Statment
for month in 1 ... 12 {
    switch month {
    case 1:  print("January")
    case 2:  print("February")
    case 3:  print("March")
    case 4:  print("April")
    case 5:  print("May")
    case 6:  print("June")
    case 7:  print("July")
    case 8:  print("August")
    case 9:  print("September")
    case 10: print("October")
    case 11: print("November")
    case 12: print("December")
    default: print("Invalid month")
    }
}

//: ### Program 4.15: A switch Statment with Case Values of String
let months = [
    "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"
]

for month in months {
    let ord: Int
    switch month {
    case "January":   ord = 1
    case "February":  ord = 2
    case "March":     ord = 3
    case "April":     ord = 4
    case "May":       ord = 5
    case "June":      ord = 6
    case "July":      ord = 7
    case "August":    ord = 8
    case "September": ord = 9
    case "October":   ord = 10
    case "November":  ord = 11
    case "December":  ord = 12
    default:          ord = 0
    }
    let suffix: String
    switch ord {
    case 1:  suffix = "st"
    case 2:  suffix = "nd"
    case 3:  suffix = "rd"
    default: suffix = "th"
    }
    print("\(month) is the \(ord)\(suffix) month")
}

//: ### Program 4.16: A switch Statment with Multi-Valued Cases
for month in months {
    let season: String
    switch month {
    case "March", "April", "May":            season = "spring"
    case "June", "July", "August":           season = "summer"
    case "September", "October", "November": season = "autumn"
    case "December", "January", "February":  season = "winter"
    default: season = "";
    }
    //print("The month \(month) is in the meteorological \(season)")
    print("\(month) is in the \(season)")
}

//: ### Program 4.17: A switch Statment with Fall-Through Cases
for i in 0 ... 4 {
    switch i {
    case 1: print("\t  *")
    case 2: print("\t ***")
    case 3: print("\t*****")
    default: print()
    }
}

for i in 0 ... 4 {
    print("i = ", i)
    switch i {
    case 1: print("\t  *")
        fallthrough
    case 2: print("\t ***")
        fallthrough
    case 3: print("\t*****")
    default: print()
    }
}



//: [Next](@next)
