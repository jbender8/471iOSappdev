//: [Previous](@previous)

import Foundation

//: ### Program 6.2: The Counter Class, Version 2
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func decrement() {
        count -= 1
    }
    func increment(by c: Int) {
        count += c
    }
    func decrement(by c: Int) {
        count -= c
    }
}

var c2 = Counter()
c2.increment(by: 10)
c2.count
c2.decrement()
c2.decrement(by: 5)
c2.count


//: [Next](@next)
