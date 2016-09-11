//
// Created by TYRONE AVNIT on 2016/09/11.
//

import Foundation

extension R {

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates
        - parameter first: Argument to be passed into predicate functions

        - returns: Whether all predicates are satisfied by the arguments.

    */

    public class func allPass<A>(array: [(A) -> Bool], with first: A) -> Bool {
        for element in array {
            if !element(first) {
                return false
            }
        }

        return true
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

    public class func allPass<A, B>(array: [(A, B) -> Bool], with first: A, _ second: B) -> Bool {
        for element in array {
            if !element(first, second) {
                return false
            }
        }

        return true
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

    public class func allPass<A, B, C>(array: [(A, B, C) -> Bool], with first: A, _ second: B, _ third: C) -> Bool {
        for element in array {
            if !element(first, second, third) {
                return false
            }
        }

        return true
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the highest-arity predicate.

    */

    public class func allPass<A>(array: [(A) -> Bool]) -> (with: A) -> Bool {
        return curry(allPass)(array)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the highest-arity predicate.

    */

    public class func allPass<A, B>(array: [(A, B) -> Bool]) -> (with: A) -> (and: B) -> Bool {
        return curry(allPass)(array)
    }

    /**

        Takes a list of predicates and returns a predicate that returns true
        for a given list of arguments if every one of the provided predicates
        is satisfied by those arguments.

        - parameter array: Array of predicates

        - returns: The function returned is a curried function whose arity matches that of the highest-arity predicate.

    */

    public class func allPass<A, B, C>(array: [(A, B, C) -> Bool]) -> (with: A) -> (and: B) -> (and: C) -> Bool {
        return curry(allPass)(array)
    }

}