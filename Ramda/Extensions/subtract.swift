//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Subtracts second argument from the first.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: Returns the difference between the 'lhs' and the 'rhs'.

    */

    public class func subtract<T: SubtractionArithmeticType>(lhs: T, minus rhs: T) -> T {
        return lhs - rhs
    }

    /**

        Subtracts second argument from the first.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the last operand and returns
        the difference between the 'lhs' and the 'rhs'.

    */

    public class func subtract<T: SubtractionArithmeticType>(lhs: T) -> (minus: T) -> T {
        return curry(subtract)(lhs)
    }

}

/**

 Protocol for types that support subtraction arithmetic.

*/

public protocol SubtractionArithmeticType {

    /**

        Subtracts "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The difference of the two values.

    */

    func - (lhs: Self, rhs: Self) -> Self
}

extension Int: SubtractionArithmeticType {}
extension Int8: SubtractionArithmeticType {}
extension Int16: SubtractionArithmeticType {}
extension Int32: SubtractionArithmeticType {}
extension Int64: SubtractionArithmeticType {}
extension UInt: SubtractionArithmeticType {}
extension UInt8: SubtractionArithmeticType {}
extension UInt16: SubtractionArithmeticType {}
extension UInt32: SubtractionArithmeticType {}
extension UInt64: SubtractionArithmeticType {}
extension Float: SubtractionArithmeticType {}
extension Double: SubtractionArithmeticType {}
