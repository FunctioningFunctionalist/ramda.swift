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

    public class func divide<T: DivisionArithmeticType>(lhs: T, by rhs: T) -> T {
        return lhs / rhs
    }

    /**

        Divides two values.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func divide<T: DivisionArithmeticType>(lhs: T) -> (by: T) -> T {
        return curry(divide)(lhs)
    }

}

/**

 Protocol for types that support division arithmetic.

*/

public protocol DivisionArithmeticType {

    /**

        Divides "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The quotient of the two values.

    */

    func / (lhs: Self, rhs: Self) -> Self
}

extension Int: DivisionArithmeticType {}
extension Int8: DivisionArithmeticType {}
extension Int16: DivisionArithmeticType {}
extension Int32: DivisionArithmeticType {}
extension Int64: DivisionArithmeticType {}
extension UInt: DivisionArithmeticType {}
extension UInt8: DivisionArithmeticType {}
extension UInt16: DivisionArithmeticType {}
extension UInt32: DivisionArithmeticType {}
extension UInt64: DivisionArithmeticType {}
extension Float: DivisionArithmeticType {}
extension Double: DivisionArithmeticType {}
