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

    public class func modulo<T: ModularArithmeticType>(lhs: T, by rhs: T) -> T {
        return lhs % rhs
    }

    /**

        Divides two values and returns the remainder of the division.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func modulo<T: ModularArithmeticType>(lhs: T) -> (by: T) -> T {
        return curry(modulo)(lhs)
    }

}

/**

 Protocol for types that support modular arithmetic.

*/

public protocol ModularArithmeticType {

    /**

        Divides "lhs" and "rhs", returning the remainder of the division.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The remainder of the division.

    */

    func % (lhs: Self, rhs: Self) -> Self
}

extension Int: ModularArithmeticType {}
extension Int8: ModularArithmeticType {}
extension Int16: ModularArithmeticType {}
extension Int32: ModularArithmeticType {}
extension Int64: ModularArithmeticType {}
extension UInt: ModularArithmeticType {}
extension UInt8: ModularArithmeticType {}
extension UInt16: ModularArithmeticType {}
extension UInt32: ModularArithmeticType {}
extension UInt64: ModularArithmeticType {}
extension Float: ModularArithmeticType {}
extension Double: ModularArithmeticType {}
