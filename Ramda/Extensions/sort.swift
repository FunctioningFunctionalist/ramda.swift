//
//  Sort.swift
//  Ramda
//
//

import Foundation

extension R {

    /**

     Returns a copy of the list, sorted according to the comparator function

     - Parameter function: A predicate that returns `true` if its
     first argument should be ordered before its second argument; otherwise, `false`
     - Parameter list: The list to be sorted

     - returns: A sorted array of the sequence's elements.

     */

    public class func sort<T: Comparable>(_ function: (T, T) -> Bool, _ list: [T]) -> [T] {
        return list.sorted(by: function)
    }

    /**

     Returns a copy of the list, sorted according to the comparator function

     - Parameter function: A predicate that returns `true` if its
     first argument should be ordered before its second argument; otherwise, `false`

     - returns: A curried function

     */

    public class func sort<T: Comparable>(_ function: @escaping (T, T) -> Bool) -> (_ list: [T]) -> [T] {
        return curry(sort)(function)
    }

}
