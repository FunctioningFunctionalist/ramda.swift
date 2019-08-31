//
//  all.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Returns true if all elements of the list match the predicate, false if there are any that don't.

     - parameter function: The function to be called on every element of the input `list`.
     - parameter list: The list to be iterated over.

     - returns: Bool

     */

    public class func all<T>(_ function: (T) -> Bool, _ list: [T]) -> Bool {
        return list.allSatisfy(function)
    }

    /**

     Returns true if all elements of the list match the predicate, false if there are any that don't.

     - parameter function: The function to be called on every element of the input `list`.

     - returns: Curried function

     */

    public class func all<T>(_ function: @escaping (T) -> Bool) -> ([T]) -> Bool {
        return curry(all)(function)
    }

}
