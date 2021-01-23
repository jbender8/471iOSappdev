//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: ### Program 6.7: The Fraction Functions and Operators
class Fraction : CustomStringConvertible {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
    }
    
    init() {}
    
    private func normalize() {
        if (denominator < 0) {
            denominator = -denominator
            numerator = -numerator
        }
        reduce()
    }
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
    }
    
    var description: String {
        return "\(numerator)/\(denominator)"
    }

    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
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
    
    func add(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    static func +(a: Fraction, b: Fraction) -> Fraction {
        return a.add(b)
    }
    
    static func +=(left: inout Fraction, right: Fraction) {
        left = left + right
    }

}

func add(_ a: Fraction, _ b: Fraction) -> Fraction {
    return a.add(b)
}

let f1 = Fraction(1, over: 2)
let f2 = Fraction(1, over: 4)

let f3 = f1.add(f2)
f3.print()

let f4 = add(f1, f2)
f4.print()

let f5 = f1 + f2
f5.print()

var f6 = Fraction(1, over: 2)
f6 += f2
f6.print()

f6.toDouble()

// an extension

extension Double {
    init(_ f: Fraction) {
        self = f.toDouble()
    }
}

Double(f6)

