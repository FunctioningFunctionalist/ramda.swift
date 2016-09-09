//
// Created by Justin Guedes on 2016/09/09.
//

import Foundation

extension R {

    /**

        Concatenates two values.

        - parameter lhs: The left hand side operand.

        - returns: The concatenated value of the two operands.

    */

    public class func concat<T: Concatenate>(lhs: T) -> (rhs: T) -> T {
        return { rhs in
            return lhs + rhs
        }
    }

    /**

        Concatenates two values.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The concatenated value of the two operands.

    */

    public class func concat<T: Concatenate>(lhs: T, rhs: T) -> T {
        return concat(lhs)(rhs: rhs)
    }

}

/**

 Protocol for types that support concatenation.

*/

public protocol Concatenate {

    /**

        Adds "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The concatenated value of the two operands.

    */

    func + (lhs: Self, rhs: Self) -> Self

}

extension Array : Concatenate {}
extension String : Concatenate {}
