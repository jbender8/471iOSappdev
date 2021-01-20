//: [Previous](@previous)

import Foundation

//: ### Program 5.1: A Parameter-less Function
func helloWorld() {
    print("Hello, world!")
}

helloWorld()


//: ### Program 5.2: A Function with a Parameter
//: Version 1:
func greet(name : String) {
    print("Hello, \(name)!")
}

greet(name: "Swift")
greet(name: "iOS")

//: Version 2:
func greet(_ name : String) {
    print("Hello, \(name)!")
}

greet("Swift")
greet("iOS")


//: ### Program 5.3: A Function with a Return Value
func square(_ n : Int) -> Int {
    return n * n
}

square(25)
square(128)


//: ### Program 5.4: Primality Test
func isPrime(_ n : Int) -> Bool {
    if n < 2 {
        return false
    } else {
        var i = 2
        while i * i < n {
            if n % i == 0 {
                return false
            }
            i += 1
        }
        return true
    }
}

isPrime(2)
isPrime(15)
isPrime(23)

for i in 1 ... 100 {
    if isPrime(i) {
        print("\(i) is a prime number")
    }
}


//: ### Program 5.5: Convert to Ordinals
func toOrdinal(_ i: Int) -> String {
    if i % 10 >= 1 && i % 10 <= 3  // 1st, 2nd, 3rd
        && i % 100 / 10 != 1 {     // but 11th, 12th, 13th
            let suffix = [ "st", "nd", "rd" ]
            return "\(i)\(suffix[i % 10 - 1])"
    } else {
        return "\(i)th"
    }
}

toOrdinal(1)
toOrdinal(2)
toOrdinal(3)
toOrdinal(4)
toOrdinal(10)
toOrdinal(11)
toOrdinal(15)
toOrdinal(23)
toOrdinal(101)
toOrdinal(300)
toOrdinal(522)
toOrdinal(613)


//: ### Program 5.6: A Recursive Function: the _Fibonacci_ Numbers
func fibonacci(_ i : UInt) -> UInt {
    if (i == 0 || i == 1) {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}

fibonacci(8)
fibonacci(12)

for i : UInt in 1 ... 15 {
    print("fibonacci(\(i)) = \(fibonacci(i))")
}


//: ### Program 5.7: The Maximum Function
//: Version 1a: default external parameter names
func maximum(x: Int, y: Int) -> Int {
    return x >= y ? x : y
}

maximum(x: 2, y: 5)
maximum(x: 10, y: -11)


//: Version 1b: anonymous parameters
func maximum(_ x: Int, _ y: Int) -> Int {
    return x >= y ? x : y
}

maximum(2, 5)
maximum(10, -11)

//: Version 2: different external and internal parameter names
func maximum(of x: Int, and y: Int) -> Int {
    return x >= y ? x : y
}

maximum(of: 2, and: 5)
maximum(of: 10, and: -11)


//: ### Prorgam 5.8: Functions with Named Parameters
//: Version 1: all parameters are anonymous
func printTicket(_ name: String, _ origin: String, _ destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicket("Tim Cook", "San Francisco, CA", "Chicago, IL")


//: Version 2: use default external names
func printTicket(name: String, origin: String, destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicket(name: "Tim Cook", origin: "San Francisco, CA", destination: "Chicago, IL")

//: Version 3: the Swift way
func printTicket(for name: String, from origin: String, to destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicket(for: "Tim Cook", from: "San Francisco, CA", to: "Chicago, IL")



//: ### Program 5.9: The Median Function
//: Version 1:
func median(_ x: Int, _ y: Int, _ z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(1, 2, 3)
median(1, 3, 2)
median(3, 1, 2)
median(3, 2, 1)
median(2, 1, 3)
median(2, 3, 1)
median(1, 1, 2)
median(1, 2, 1)
median(2, 1, 1)
median(2, 2, 1)
median(2, 1, 2)
median(1, 2, 2)

//: Version 2:
func median(of x: Int, and y: Int, and z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(of: 1, and: 2, and: 3)

//: Version 3:
func median(x: Int, y: Int, z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(x: 1, y: 2, z: 3)
median(x: 1, y: 3, z: 2)
median(x: 3, y: 1, z: 2)
median(x: 3, y: 2, z: 1)
median(x: 2, y: 1, z: 3)
median(x: 2, y: 3, z: 1)
median(x: 1, y: 1, z: 2)
median(x: 1, y: 2, z: 1)
median(x: 2, y: 1, z: 1)
median(x: 2, y: 2, z: 1)
median(x: 2, y: 1, z: 2)
median(x: 1, y: 2, z: 2)




//: ### Program 5.10: The Greatest Common Divisor Function
//: Euclid's algorithm
func gcd(_ a: UInt, _ b: UInt) -> UInt {
    var u = a, v = b
    var r = u % v
    while r > 0 {
        u = v; v = r; r = u % v
    }
    return v
}

gcd(2, 3)
gcd(5, 15)
gcd(18, 15)
gcd(18, 27)


func gcd(a: UInt, b: UInt) -> UInt {
    var u = a, v = b
    var r = u % v
    while r > 0 {
        u = v; v = r; r = u % v
    }
    return v
}

gcd(a: 2, b: 3)
gcd(a: 5, b: 15)
gcd(a: 18, b: 15)
gcd(a: 18, b: 27)


//: ### Program 5.11: A Function with a Default Parameter Value
func greeting(_ name : String = "world") {
    print("Hello, \(name)!")
}

greeting("Swift")
greeting()


//: [Next](@next)
