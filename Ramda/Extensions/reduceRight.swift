//
//  reduceRight.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/14/16.
//
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

     Returns a single item by iterating through the list, successively calling
     the iterator function and passing it an accumulator value and the current
     value from the array, and then passing the result to the next call. Similar
     to reduce, except moves through the input list from the right to the left.

     - parameter iterator: The function that produces accumulator result.
     - parameter initialValue: The initial value for accumulating.
     - parameter sequence: The sequence to reduce.

     - returns: The result of the iteration.

     */

    public class func reduceRight<A, B: Sequence>
        (_ iterator: (A, B.Iterator.Element) -> A, startingWith initialValue: A, in sequence: B) -> A {
        return sequence.reversed().reduce(initialValue, iterator)
    }

    /**

     Returns a single item by iterating through the list, successively calling
     the iterator function and passing it an accumulator value and the current
     value from the array, and then passing the result to the next call. Similar
     to reduce, except moves through the input list from the right to the left.

     - parameter iterator: The function that produces accumulator result.

     - returns: A curried function that accepts the initial value and sequence and
     returns the result of the iteration.

     */

    public class func reduceRight<A, B: Sequence>
        (_ iterator: (A, B.Iterator.Element) -> A) -> (_ startingWith: A) -> (_ in: B) -> A {
        return curry(reduceRight)(iterator)
    }

}

// swiftlint:enable line_length
