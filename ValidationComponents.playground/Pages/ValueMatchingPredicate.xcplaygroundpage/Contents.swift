//: [Previous](@previous)

import Foundation
import ValidationComponents

/*:
 ## `PairMatchingPredicate`
 
 Use a `PairMatchingPredicate` to evaluate if a given pair of values match.
 */

let predicate = PairMatchingPredicate<String>()
predicate.evaluate(with: ("swift", "swift")) // returns true
predicate.evaluate(with: ("swift", "obj-c")) // returns false

//: [Next](@next)
