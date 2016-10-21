//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        Checks if 'lhs' is greater than 'rhs'.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: True is 'lhs' is greater than 'rhs', false otherwise.

    */

    public class func gt<T: Comparable>(_ lhs: T, than rhs: T) -> Bool {
        return lhs > rhs
    }

    /**

        Checks if 'lhs' is greater than 'rhs'.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the 'rhs' operand and
        returns rue is 'lhs' is greater than 'rhs', false otherwise.

    */

    public class func gt<T: Comparable>(_ lhs: T) -> (_ than: T) -> Bool {
        return curry(gt)(lhs)
    }

}
