//
//  comparator.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/25/16.
//
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

     Makes a comparator function out of a function that reports whether the first
     element is less than the second.

     - parameter predicate: A predicate function of arity two.

     - returns: A Function :: a -> b -> Int that returns -1 if a < b, 1 if b < a, otherwise 0

     */

    public class func comparator<A>(_ predicate: @escaping (A, A) -> Bool) -> (_ firstElement: A, _ secondElement: A) -> Int {
        return { firstElement, secondElement in
            predicate(firstElement, secondElement) ? -1 : predicate(secondElement, firstElement) ? 1 : 0
        }
    }

    /**

     Makes a comparator function out of a function that reports whether the first
     element is less than the second.

     - parameter predicate: A predicate function of arity two.

     - returns: A curried function that accepts the first Element as a paramerter

     */

    public class func comparator<A>(_ predicate: @escaping (A, A) -> Bool) -> (_ firstElement: A) -> (_ secondElement: A) -> Int {
        return curry(comparator(predicate))
    }

}

// swiftlint:enable line_length
