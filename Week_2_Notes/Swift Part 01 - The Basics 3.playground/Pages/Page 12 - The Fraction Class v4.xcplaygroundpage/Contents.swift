//: [Previous](@previous)

import Foundation

//: ### Program 6.6: The Fraction Class, Version 4
class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init() {}
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
    
    func add(_ f: Fraction) {
        numerator = numerator * f.denominator + denominator * f.numerator
        denominator = denominator * f.denominator
        reduce()
    }
    
    func reduce() {
        var u = abs(numerator)
        var v = denominator
        var r: Int
        while (v != 0) {
            r = u % v; u = v; v = r
        }
        numerator /= u
        denominator /= u
    }
    
}

var f1 = Fraction(1, over: 2)
var f2 = Fraction(1, over: 4)

f1.add(f2)
f1.print()

//: [Next](@next)
