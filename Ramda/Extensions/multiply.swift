//
// Created by Justin Guedes on 2016/09/15.
//

import Foundation

extension R {

    /**

        Multiplies two values.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The product of the two values.

    */

    public class func multiply<T: MultiplicationArithmeticType>(lhs: T, by rhs: T) -> T {
        return lhs * rhs
    }

    /**

        Multiplies two values.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func multiply<T: MultiplicationArithmeticType>(lhs: T) -> (by: T) -> T {
        return curry(multiply)(lhs)
    }

}

/**

 Protocol for types that support multiplication arithmetic.

*/

public protocol MultiplicationArithmeticType {

    /**

        Multiplies "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The product of the two values.

    */

    func * (lhs: Self, rhs: Self) -> Self
}

extension Int: MultiplicationArithmeticType {}
extension Int8: MultiplicationArithmeticType {}
extension Int16: MultiplicationArithmeticType {}
extension Int32: MultiplicationArithmeticType {}
extension Int64: MultiplicationArithmeticType {}
extension UInt: MultiplicationArithmeticType {}
extension UInt8: MultiplicationArithmeticType {}
extension UInt16: MultiplicationArithmeticType {}
extension UInt32: MultiplicationArithmeticType {}
extension UInt64: MultiplicationArithmeticType {}
extension Float: MultiplicationArithmeticType {}
extension Double: MultiplicationArithmeticType {}
