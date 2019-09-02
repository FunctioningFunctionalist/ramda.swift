//
//  apply.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Applies function fn to the argument list args

     - parameter function: The function that the arg will be applied to
     - parameter argument: The function that the arg will be applied to

     - returns: The result of the function

     */

    public class func apply<A, B>(_ function: @escaping (A) -> B, argument: A) -> B {
        return function(argument)
    }

    /**

     Applies function fn to the argument list args

     - parameter function: The function that the arg will be applied to

     - returns: The result of the function

     */

    public class func apply<A, B>(_ function: @escaping (A) -> B) -> (A) -> B {
        return curry(apply)(function)
    }

    /**

     Applies the argument to a list of functions

     - parameter functions: The array of functions that will be executed with the provided argument
     - parameter argument: The function that the arg will be applied to

     - returns: A new list

     */

    public class func apply<A, B>(_ functions: [(A) -> B], _ argument: A) -> [B] {
        return functions.map { function in function(argument) }
    }

    /**

     Applies the argument to a list of functions

     - parameter functions: The list of functions that will be executed with the provided argument

     - returns: A curried function

     */

    public class func apply<A, B>(_ functions: [(A) -> B]) -> (A) -> [B] {
        return curry(apply)(functions)
    }

}
