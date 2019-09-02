//
//  times.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Calls an input function `n` times, returning an array containing the results
     of those function calls

     - parameter functor: functor` is passed one argument:
     The current value of `n`, which begins at `0` and is gradually incremented to `n - 1`.
     - parameter count: The right hand side operand.

     - returns: The list of numbers in the set `[a, b)`.

     */

    public class func times<T: BasicArithmeticType & Comparable, U>(_ functor: ((T) -> U), count: T) -> [U] {
        var result = [U]()
        var index = T.zero
        while index < count {
            result.append(functor(index))
            // swiftlint:disable shorthand_operator
            // swift rejects += here.
            index = index + T.one
            // swiftlint:enable shorthand_operator
        }
        return result
    }

    /**

     Calls an input function `n` times, returning an array containing the results
     of those function calls

     - parameter functor: functor` is passed one argument:
     The current value of `n`, which begins at `0` and is gradually incremented to `n - 1`.
     - returns: Curried function

     */

    public class func times<T: BasicArithmeticType & Comparable, U>(_ functor: @escaping ((T) -> U))
        -> (_ count: T) -> [U] {
            return curry(times)(functor)
    }

}
