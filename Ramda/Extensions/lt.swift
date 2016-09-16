//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        Checks if 'lhs' is less than 'rhs'.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: True is 'lhs' is less than 'rhs', false otherwise.

    */

    public class func lt<T: Comparable>(lhs: T, than rhs: T) -> Bool {
        return lhs < rhs
    }

    /**

        Checks if 'lhs' is less than 'rhs'.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the 'rhs' operand and
        returns rue is 'lhs' is less than 'rhs', false otherwise.

    */

    public class func lt<T: Comparable>(lhs: T) -> (than: T) -> Bool {
        return curry(lt)(lhs)
    }

}
