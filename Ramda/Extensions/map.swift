//
//  map.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.

     - parameter function: The function to be called on every element of the input `list`.
     - parameter functor: The list to be iterated over.

     - returns: The new list.

     */

    public class func map<A, B>(_ function: (A) -> B, _ functor: [A]) -> [B] {
        return functor.map(function)
    }

    /**

     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.

     - parameter function: The function to be called on every element of the input `list`.

     - returns: a curried function.

     */

    public class func map<A, B>(_ function: @escaping (A) -> B) -> (_ with: [A]) -> [B] {
        return curry(map)(function)
    }

}
