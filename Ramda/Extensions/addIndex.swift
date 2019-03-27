//
//  addIndex.swift
//  Pods-Ramda_Example
//
//  Created by TYRONE AVNIT on 2019/03/27.
//

import Foundation

extension R {

    /**
     
     Creates a new list iteration function from an existing one by
     adding two new parameters to its callback function: the current index, and the entire list.
     
     - parameter function: A list iteration function that does not pass index or list to its callback
     - parameter functor: The list to be iterated over.
     
     - returns: The new list
     
     */

    public class func addIndex<A, B>(_ function: (Int, A) -> B, _ functor: [A]) -> [B] {
        return functor.enumerated().map(function)
    }

    /**
     
     Creates a new list iteration function from an existing one by
     adding two new parameters to its callback function: the current index, and the entire list.
     
     - parameter function: A list iteration function that does not pass index or list to its callback
     
     - returns: Curried function
     
     */

    public class func addIndex<A, B>(_ function: @escaping (Int, A) -> B) -> (_ functor: [A]) -> [B] {
        return curry(addIndex)(function)
    }

}
