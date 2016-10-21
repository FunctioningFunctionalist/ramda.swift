//
// Created by Justin Guedes on 2016/09/15.
//

import Foundation

extension R {

    /**

        Divides two values and returns the remainder of the division.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The remainder of the division.

    */

    public class func modulo(_ lhs: Int, by rhs: Int) -> Int {
        return lhs % rhs
    }

    /**

        Divides two values and returns the remainder of the division.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func modulo(_ lhs: Int) -> (_ by: Int) -> Int {
        return curry(modulo)(lhs)
    }

}
