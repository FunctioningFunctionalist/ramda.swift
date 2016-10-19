//
// Created by TYRONE AVNIT on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates
        - parameter first: Argument to be passed into predicate functions

        - returns: Whether all predicates are satisfied by the arguments.

    */

    public class func allPass<A>(_ array: [(A) -> Bool], with first: A) -> Bool {
        let predicates: [() -> Bool] = array.map { R.bind($0, with: first) }
        return executePredicates(predicates)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates
        - parameter first: Argument to be passed into predicate functions
        - parameter second: Argument to be passed into predicate functions

        - returns: Whether all predicates are satisfied by the arguments.

    */

    public class func allPass<A, B>(_ array: [(A, B) -> Bool], with first: A, and second: B) -> Bool {
        let predicates: [() -> Bool] = array.map { R.bind($0, with: first, and: second) }
        return executePredicates(predicates)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates
        - parameter first: Argument to be passed into predicate functions
        - parameter second: Argument to be passed into predicate functions
        - parameter third: Argument to be passed into predicate functions

        - returns: Whether all predicates are satisfied by the arguments.

    */

    public class func allPass<A, B, C>(_ array: [(A, B, C) -> Bool], with first: A, _ second: B, and third: C) -> Bool {
        let predicates: [() -> Bool] = array.map { R.bind($0, with: first, second, and: third) }
        return executePredicates(predicates)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates
        - parameter first: Argument to be passed into predicate functions
        - parameter second: Argument to be passed into predicate functions
        - parameter third: Argument to be passed into predicate functions
        - parameter fourth: Argument to be passed into predicate functions

        - returns: Whether all predicates are satisfied by the arguments.

    */

    public class func allPass<A, B, C, D>(_ array: [(A, B, C, D) -> Bool], with first: A, _ second: B, _ third: C, and fourth: D) -> Bool {
        let predicates: [() -> Bool] = array.map { R.bind($0, with: first, second, third, and: fourth) }
        return executePredicates(predicates)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the
        highest-arity predicate.

    */

    public class func allPass<A>(_ array: [(A) -> Bool]) -> (_ with: A) -> Bool {
        return curry(allPass)(array)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the
        highest-arity predicate.

    */

    public class func allPass<A, B>(_ array: [(A, B) -> Bool]) -> (_ with: A) -> (_ and: B) -> Bool {
        return curry(allPass)(array)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the
        highest-arity predicate.

    */

    public class func allPass<A, B, C>(_ array: [(A, B, C) -> Bool]) -> (_ with: A) -> (B) -> (_ and: C) -> Bool {
        return curry(allPass)(array)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the highest-arity predicate.

    */

    public class func allPass<A, B, C, D>(_ array: [(A, B, C, D) -> Bool]) -> (_ with: A) -> (B) -> (C) -> (_ and: D) -> Bool {
        return curry(allPass)(array)
    }

}

// swiftlint:enable line_length

private func executePredicates(_ array: [() -> Bool]) -> Bool {
    for predicate in array {
        if !predicate() {
            return false
        }
    }

    return true
}
