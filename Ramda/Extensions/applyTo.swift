//
//  applyTo.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/16.
//

import Foundation

extension R {

    /**

     Takes a value and applies a function to it.

     - parameter first: The value
     - parameter function: The function to apply

     - returns: The result of applying `function` to `first`

     */

    public class func applyTo<A, B>(_ first: A, _ function: (A) -> B) -> B {
        return function(first)
    }

    /**

     Takes a value and applies a function to it.

     - parameter first: The value

     - returns: A curried function

     */

    public class func applyTo<A, B>(_ first: A) -> (_ function: @escaping (A) -> B) -> B {
        return curry(applyTo)(first)
    }

}
