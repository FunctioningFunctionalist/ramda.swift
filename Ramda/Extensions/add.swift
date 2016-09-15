//
//  add.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/05.
//
//

import Foundation

extension R {

    /**

        Adds two values.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The sum of the two values.

    */

    public class func add<T: AdditionArithmeticType>(lhs: T, to rhs: T) -> T {
        return lhs + rhs
    }

    /**

        Adds two values.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func add<T: AdditionArithmeticType>(lhs: T) -> (to: T) -> T {
        return curry(add)(lhs)
    }

}

/**

 Protocol for types that support addition arithmetic.

*/

public protocol AdditionArithmeticType {

    /**

        Adds "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The sum of the two values.

    */

    func + (lhs: Self, rhs: Self) -> Self
}

extension Int: AdditionArithmeticType {}
extension Int8: AdditionArithmeticType {}
extension Int16: AdditionArithmeticType {}
extension Int32: AdditionArithmeticType {}
extension Int64: AdditionArithmeticType {}
extension UInt: AdditionArithmeticType {}
extension UInt8: AdditionArithmeticType {}
extension UInt16: AdditionArithmeticType {}
extension UInt32: AdditionArithmeticType {}
extension UInt64: AdditionArithmeticType {}
extension Float: AdditionArithmeticType {}
extension Double: AdditionArithmeticType {}
