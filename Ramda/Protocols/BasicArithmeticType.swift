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

        Adds "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The sum of the two values.

    */

    func + (lhs: Self, rhs: Self) -> Self

    /**

        Subtracts "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The difference of the two values.

    */

    func - (lhs: Self, rhs: Self) -> Self

    /**

        Multiplies "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The product of the two values.

    */

    func * (lhs: Self, rhs: Self) -> Self

    /**

        Divides "lhs" and "rhs", returning a result of same type.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The quotient of the two values.

    */

    func / (lhs: Self, rhs: Self) -> Self

}

extension Int: BasicArithmeticType {

    public static var zero: Int {

        get {

            return 0

        }

    }

}

extension Int8: BasicArithmeticType {

    public static var zero: Int8 {

        get {

            return 0

        }

    }

}

extension Int16: BasicArithmeticType {

    public static var zero: Int16 {

        get {

            return 0

        }

    }

}

extension Int32: BasicArithmeticType {

    public static var zero: Int32 {

        get {

            return 0

        }

    }

}

extension Int64: BasicArithmeticType {

    public static var zero: Int64 {

        get {

            return 0

        }

    }

}

extension UInt: BasicArithmeticType {

    public static var zero: UInt {

        get {

            return 0

        }

    }

}

extension UInt8: BasicArithmeticType {

    public static var zero: UInt8 {

        get {

            return 0

        }

    }

}

extension UInt16: BasicArithmeticType {

    public static var zero: UInt16 {

        get {

            return 0

        }

    }

}

extension UInt32: BasicArithmeticType {

    public static var zero: UInt32 {

        get {

            return 0

        }

    }

}

extension UInt64: BasicArithmeticType {

    public static var zero: UInt64 {

        get {

            return 0

        }

    }

}

extension Float: BasicArithmeticType {

    public static var zero: Float {

        get {

            return 0

        }

    }

}

extension Double: BasicArithmeticType {

    public static var zero: Double {

        get {

            return 0

        }

    }

}
