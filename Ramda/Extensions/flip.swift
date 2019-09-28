//
//  flip.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/16.
//

import Foundation

extension R {

    /**

     Returns a new function much like the supplied one, except that
     the first two arguments' order is reversed.

     - parameter function: The function to invoke with its first two parameters reversed.
     - parameter first: The first argument
     - parameter list: The second argument

     - returns: The result of invoking `function` with its first two parameters' order reversed.

     */

    public class func flip<A, B, C>(_ function: (A, B) -> C, _ second: B, _ first: A) -> C {
        return function(first, second)
    }

    /**

     Returns a new function much like the supplied one, except that
     the first two arguments' order is reversed.

     - parameter function: A curried function to invoke with its first two parameters reversed.
     - parameter first: The first argument
     - parameter list: The second argument

     - returns: The result of invoking `function` with its first two parameters' order reversed.

     */

    public class func flip<A, B, C>(_ function: (A) -> (B) -> C, _ second: B, _ first: A) -> C {
        return function(first)(second)
    }

    /**

     Returns a new function much like the supplied one, except that
     the first two arguments' order is reversed.

     - parameter function: The function to invoke with its first two parameters reversed.

     - returns: A curried function

     */

    public class func flip<A, B, C>(_ function: @escaping (A, B) -> C) -> (_ second: B) -> (_ first: A) -> C {
        return curry(flip)(function)
    }

    /**

     Returns a new function much like the supplied one, except that
     the first two arguments' order is reversed.

     - parameter function: A curried function to invoke with its first two parameters reversed.

     - returns: A curried function

     */

    public class func flip<A, B, C>(_ function: @escaping (A) -> (B) -> C) -> (_ second: B) -> (_ first: A) -> C {
        return curry(flip)(function)
    }

}
