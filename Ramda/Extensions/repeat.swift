//
//  repeat.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Returns a fixed list of size `n` containing a specified identical value.

     - parameter value: The value to repeat.
     - parameter count: The desired size of the output list.

     - returns: A new array containing `n` `value`s.

     */

    public class func `repeat`<T, U: BasicArithmeticType & Comparable>(_ value: T, count: U) -> [T] {
        // the JS version uses 'always' here, but we can't becaue of stricter argument checking.
        let functor: ((U) -> T) = { _ in value }
        return R.times(functor, count: count)
    }

    /**

     Returns a fixed list of size `n` containing a specified identical value.

     - parameter value: The value to repeat.
     - returns: Curried function

     */

    public class func `repeat`<T, U: BasicArithmeticType & Comparable>(_ value: T) -> (_ count: U) -> [T] {
        return curry(`repeat`)(value)
    }

}
