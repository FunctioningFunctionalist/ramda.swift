//
//  adjust.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Applies a function to the value at the given index of an array, returning a
     new copy of the array with the element at the given index replaced with the
     result of the function application.

     - parameter function: The function to be called on every element of the input `list`.
     - parameter index: The index of where the function will be applied
     - parameter list: The list to be iterated over.

     - returns: The new list.

     */

    public class func adjust<A>(_ function: (A) -> A, _ index: Int, _ list: [A]) -> [A] {
        return list.enumerated().reduce([], { (result, nextValue) in
            return result + (nextValue.offset == index ? [function(nextValue.element)] : [nextValue.element])
        })
    }

    /**

     Applies a function to the value at the given index of an array, returning a
     new copy of the array with the element at the given index replaced with the
     result of the function application.

     - parameter function: The function to be called on every element of the input `list`.

     - returns: Curried function

     */

    public class func adjust<A>(_ function: @escaping (A) -> A) -> (Int) -> ([A]) -> [A] {
        return curry(adjust)(function)
    }

}
