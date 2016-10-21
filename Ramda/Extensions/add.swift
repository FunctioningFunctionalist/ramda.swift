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

    public class func add<T: BasicArithmeticType>(_ lhs: T, to rhs: T) -> T {
        return lhs + rhs
    }

    /**

        Adds two values.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts another value to produce the result.

    */

    public class func add<T: BasicArithmeticType>(_ lhs: T) -> (_ to: T) -> T {
        return curry(add)(lhs)
    }

}
