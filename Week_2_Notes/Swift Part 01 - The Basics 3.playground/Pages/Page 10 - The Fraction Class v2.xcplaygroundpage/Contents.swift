//: [Previous](@previous)

import Foundation

//: ### Proram 6.4: The Fraction Class, Version 2
class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init() {}
    
    func setTo(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func setTo(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func setTo(_ numerator: Int, _ denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator)
    }
}

var f1 = Fraction(numerator: 1, denominator: 2)
f1.print()

var f2 = Fraction(2, over: 3)
f2.print()

var f3 = Fraction()
f3.setTo(numerator: 1, denominator: 3)
f3.print()

var f4 = Fraction()
f4.setTo(1, over: 4)
f4.print()

var f5 = Fraction()
f5.setTo(3, 4)
f5.print()

//: [Next](@next)
