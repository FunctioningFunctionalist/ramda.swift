//
//  allPass.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Bool

     */

    public class func allPassK<T>(_ predicates: [(T) -> Bool], _ list: [T]) -> Bool {
        let fn = apply(predicates.compactMap(R.all))
        return fn(list).filter(not).count == 0
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Curried function

     */

    public class func allPassK<T>(_ predicates: [(T) -> Bool]) -> ([T]) -> Bool {
        return curry(allPassK)(predicates)
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Bool

     */

    public class func allPass<T>(_ predicates: [(T) -> Bool], _ arg: T) -> Bool {
        let fn = apply(predicates)
        return fn(arg).filter(not).count == 0
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Curried function

     */

    public class func allPass<T>(_ predicates: [(T) -> Bool]) -> (T) -> Bool {
        return curry(allPass)(predicates)
    }

}
