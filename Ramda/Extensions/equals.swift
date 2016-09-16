//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        Checks if the 'lhs' is equal to the 'rhs'.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: Returns true if 'lhs' is equivalent to 'rhs', else false.

    */

    public class func equals<T: Equatable>(lhs: T, to rhs: T) -> Bool {
        return lhs == rhs
    }

    /**

        Checks if the 'lhs' is equal to the 'rhs'.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the 'rhs' and returns true
        if 'lhs' is equivalent to 'rhs', else false.

    */

    public class func equals<T: Equatable>(lhs: T) -> (to: T) -> Bool {
        return curry(equals)(lhs)
    }

}
