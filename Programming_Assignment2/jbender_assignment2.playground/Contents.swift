import UIKit

func rank(search: Int, list: [Int]) -> Int{
    var start: Int = 0
    var end: Int = list.count
    repeat{
        let mid: Int = start+(end-start)/2
        if search == list[mid]{
            return mid;
        }
        else if search < list[mid]{
            end = mid
        }
        else if search > list[mid]{
            start = mid+1
        }
    }
    while start < end
    return -1
}


let l = [2,4,6,8,10]
print("Index of 2 is", rank(search: 2, list: l))
print("Correct Answer is 0")
print("")
print("Index of 4 is", rank(search: 4, list: l))
print("Correct Answer is 1")
print("")
print("Index of 5 is", rank(search: 5, list: l))
print("Correct Answer is -1")
print("")
print("Index of 6 is", rank(search: 6, list: l))
print("Correct Answer is 2")
print("")
print("Index of 8 is", rank(search: 8, list: l))
print("Correct Answer is 3")
print("")
print("Index of 3 is", rank(search: 3, list: l))
print("Correct Answer is -1")
print("")
print("-------------Next Function--------------")
print("")









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
    func subtract(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator - denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    func multiply(_ f: Fraction) -> Fraction{
        let result: Fraction = Fraction()
        result.numerator = numerator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    func divide(_ f: Fraction) -> Fraction{
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator
        result.denominator = denominator * f.numerator
        result.reduce()
        return result
    }
}


let fifth: Fraction = Fraction(1, over: 5)
print("Subtract: 1/5 - 1/6 =", fifth.subtract(Fraction(1, over: 6)))
print("Correct Answer is 1/30")
print("")
print("Subtract: 1/5 - 1/15 =", fifth.subtract(Fraction(1, over: 11)))
print("Correct Answer is 6/55")
print("")
print("Multiply: 1/5 * 1/2 =", fifth.multiply(Fraction(1, over: 2)))
print("Correct Answer is 1/10")
print("")
print("Multiply: 1/5 * 9/17 =", fifth.multiply(Fraction(6, over: 7)))
print("Correct Answer is 6/35")
print("")
print("Divide: 1/5 / 2/5 =", fifth.divide(Fraction(2, over: 5)))
print("Correct Answer is 1/2")
print("")
print("Divide: 1/5 / 4/10 =", fifth.divide(Fraction(4, over: 9)))
print("Correct Answer is 9/20")
