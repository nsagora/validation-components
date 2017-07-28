
import Foundation
import ValidationComponents

/*:
 ## `EmailPredicate`
 
 Use a `EmailPredicate` to evaluate if an email address is syntactically valid.
 */

let predicate = EmailPredicate()
predicate.evaluate(with: "hello@")
predicate.evaluate(with: "hello@nsagora.com")
predicate.evaluate(with: "héllo@nsagora.com")

//: [Next](@next)
