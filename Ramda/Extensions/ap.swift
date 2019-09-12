//
//  ap.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     ap applies a list of functions to a list of values.

     - parameter functions: The list of functions to be applied
     the accumulator and the current element from the array.
     - parameter list: The list to iterate over.

     - returns: A new list with each of the functions applied to the list of values

     */

    public class func ap<A, B>(_ functions: [(A) -> B], _ list: [A]) -> [B] {
        return reduce({ (result, function) in
            return result + map(function, list)
        }, [], functions)
    }

    /**

     ap applies a list of functions to a list of values.

     - parameter functions: The list of functions to be applied
     the accumulator and the current element from the array.

     - returns: A curried function

     */

    public class func ap<A, B>(_ functions: [(A) -> B]) -> (_ list: [A]) -> [B] {
        return curry(ap)(functions)
    }

}
