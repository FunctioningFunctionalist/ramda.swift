//
//  any.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if at least one of the provided predicates is satisfied by those arguments.

     - parameter predicates: A list of predicates functions
     - parameter list: The array to consider.

     - returns: Bool

     */

    public class func anyPass<T>(_ predicates: [(T) -> Bool], _ arg: T) -> Bool {
        let fn = apply(predicates)
        return fn(arg).filter(isSome).count > 0
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if at least one of the provided predicates is satisfied by those arguments.

     - parameter predicates: A list of predicates functions

     - returns: Curried function

     */

    public class func anyPass<T>(_ predicates: [(T) -> Bool]) -> (_ arg: T) -> Bool {
        return curry(anyPass)(predicates)
    }

}
