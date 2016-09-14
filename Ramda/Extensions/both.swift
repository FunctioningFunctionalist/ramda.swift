//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

extension R {

    /**

        Creates a function that accepts the an argument and checks against the parameters.
        This check is short-circuited in case 'lhs' is false then 'rhs' will not be executed.

        - parameter lhs: The left hand side boolean check.
        - parameter rhs: The right hand side boolean check.

        - returns: A function that accepts an argument and returns a boolean.

    */

    public class func both<T>(lhs: T -> Bool, and rhs: T -> Bool) -> (T) -> Bool {
        return { input in
            return lhs(input) && rhs(input)
        }
    }

    /**

        Creates a function that accepts the an argument and checks against the parameters.
        This check is short-circuited in case 'lhs' is false then 'rhs' will not be executed.

        - parameter lhs: The left hand side boolean check.

        - returns: A curried function that accepts the second function and returns
        a function that accepts an argument and returns a boolean.

    */

    public class func both<T>(lhs: T -> Bool) -> (and: T -> Bool) -> (T) -> Bool {
        return curry(both)(lhs)
    }

}
