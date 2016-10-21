//
// Created by Justin Guedes on 2016/09/15.
//

import Foundation

extension R {

    /**

        Divides two values.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The quotient of the two values.

    */

    public class func divide<T: BasicArithmeticType>(_ lhs: T, by rhs: T) -> T {
        return lhs / rhs
    }

    /**

        Divides two values.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func divide<T: BasicArithmeticType>(_ lhs: T) -> (_ by: T) -> T {
        return curry(divide)(lhs)
    }

}
