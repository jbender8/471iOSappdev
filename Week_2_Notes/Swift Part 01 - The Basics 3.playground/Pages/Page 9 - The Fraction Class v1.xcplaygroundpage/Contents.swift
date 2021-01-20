//: [Previous](@previous)

import Foundation

//: ### Program 6.3: The Fraction Class, the Initial Version
class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator)
    }
}

var f1 = Fraction()
f1.print()
f1.numerator = 1
f1.denominator = 3
f1.print()
print(f1.numerator)
print(f1.denominator)
print(f1.toDouble())

var f2 = Fraction()
f2.denominator = 0
print(f2.toDouble())

f2.numerator = 1
print(f2.toDouble())

//: [Next](@next)
