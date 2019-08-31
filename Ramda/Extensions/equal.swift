//
//  equal.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Returns `true` if its arguments are equivalent, `false` otherwise.

     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.

     - returns: Returns true if 'lhs' is equivalent to 'rhs', else false.

     */

    public class func equals<T: Equatable>(_ lhs: T, _ rhs: T) -> Bool {
        return lhs == rhs
    }

    /**

     Returns `true` if its arguments are equivalent, `false` otherwise.

     - parameter lhs: The left hand side operand.

     - returns: Curried function

     */

    public class func equals<T: Equatable>(_ lhs: T) -> (T) -> Bool {
        return curry(equals)(lhs)
    }

}
