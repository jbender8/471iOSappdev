//: [Previous](@previous)

import Foundation

//: ### Program 6.1: The Counter Class: the Initial Version
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
}

var c1 = Counter()
c1.increment()
c1.increment()
c1.count
c1.count = 0
c1.increment()
c1.count
//: [Next](@next)
