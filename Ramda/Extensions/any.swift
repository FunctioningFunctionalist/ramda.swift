//
//  any.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Returns true if at least one of the elements of the list match
     the predicate, false otherwise.

     - parameter fn: The predicate function
     - parameter list: The array to consider.

     - returns: Bool

     */

    public class func any<T>(_ fn: (T) -> Bool, _ list: [T]) -> Bool {
        return isSome(list.first(where: fn))
    }

    /**

     Returns true if at least one of the elements of the list match
     the predicate, false otherwise.

     - parameter fn: The predicate function

     - returns: Curried function

     */

    public class func any<T>(_ fn: @escaping (T) -> Bool) -> (_ elements: [T]) -> Bool {
        return curry(any)(fn)
    }

}
