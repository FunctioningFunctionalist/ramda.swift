//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

/**
 
 Protocol for types that supports arithmetic.
 
 */

public protocol BasicArithmeticType {

    /**
     
     Zero value for arithmetic type.
     
     */

    static var zero: Self { get }

    /**
     
     Identity value for arithmetic type.
     
     */

    static var one: Self { get }

    /**
     
     Adds "lhs" and "rhs", returning a result of same type.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: The sum of the two values.
     
     */

    static func + (lhs: Self, rhs: Self) -> Self

    /**
     
     Subtracts "lhs" and "rhs", returning a result of same type.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: The difference of the two values.
     
     */

    static func - (lhs: Self, rhs: Self) -> Self

    /**
     
     Multiplies "lhs" and "rhs", returning a result of same type.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: The product of the two values.
     
     */

    static func * (lhs: Self, rhs: Self) -> Self

    /**
     
     Divides "lhs" and "rhs", returning a result of same type.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: The quotient of the two values.
     
     */

    static func / (lhs: Self, rhs: Self) -> Self

}

extension Int: BasicArithmeticType {

    public static var zero: Int {
        return 0
    }

    public static var one: Int {
        return 1
    }

}

extension Int8: BasicArithmeticType {

    public static var zero: Int8 {
        return 0
    }

    public static var one: Int8 {
        return 1
    }

}

extension Int16: BasicArithmeticType {

    public static var zero: Int16 {
        return 0
    }

    public static var one: Int16 {
        return 1
    }

}

extension Int32: BasicArithmeticType {

    public static var zero: Int32 {

        return 0

    }

    public static var one: Int32 {
        return 1
    }

}

extension Int64: BasicArithmeticType {

    public static var zero: Int64 {
        return 0
    }

    public static var one: Int64 {
        return 1
    }

}

extension UInt: BasicArithmeticType {

    public static var zero: UInt {
        return 0
    }

    public static var one: UInt {
        return 1
    }

}

extension UInt8: BasicArithmeticType {

    public static var zero: UInt8 {
        return 0
    }

    public static var one: UInt8 {
        return 1
    }

}

extension UInt16: BasicArithmeticType {

    public static var zero: UInt16 {
        return 0
    }

    public static var one: UInt16 {
        return 1
    }

}

extension UInt32: BasicArithmeticType {

    public static var zero: UInt32 {
        return 0
    }

    public static var one: UInt32 {
        return 1
    }

}

extension UInt64: BasicArithmeticType {

    public static var zero: UInt64 {
        return 0
    }

    public static var one: UInt64 {
        return 1
    }

}

extension Float: BasicArithmeticType {

    public static var zero: Float {
        return 0
    }

    public static var one: Float {
        return 1
    }

}

extension Double: BasicArithmeticType {

    public static var zero: Double {
        return 0
    }

    public static var one: Double {
        return 1
    }

}
