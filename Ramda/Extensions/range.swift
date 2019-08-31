//
//  range.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Returns a list of numbers from `from` (inclusive) to `to` (exclusive).

     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.

     - returns: The list of numbers in the set `[a, b)`.

     */

    public class func range<T: BasicArithmeticType & Comparable>(_ lhs: T, to rhs: T) -> [T] {
        var result = [T]()
        var index = lhs
        while index < rhs {
            result.append(index)
            // swiftlint:disable shorthand_operator
            // swift rejects += here.
            index = index + T.one
            // swiftlint:enable shorthand_operator
        }
        return result
    }

    /**

     Returns a list of numbers from `from` (inclusive) to `to` (exclusive).

     - parameter lhs: The left hand side operand.
     - returns: Curried function

     */

    public class func range<T: BasicArithmeticType & Comparable>(_ lhs: T) -> (_ to: T) -> [T] {
        return curry(range)(lhs)
    }

}
