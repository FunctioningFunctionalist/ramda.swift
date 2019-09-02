//
//  add.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
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

     - returns: Curried function

     */

    public class func add<T: BasicArithmeticType>(_ lhs: T) -> (_ to: T) -> T {
        return curry(add)(lhs)
    }

}
