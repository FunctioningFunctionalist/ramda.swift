//
//  reduceWhile.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/16/16.
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

     - parameter predicate: The predicate. It is passed the accumulator and the current element.
     - parameter iterator: The function that produces accumulator result.
     - parameter initialValue: The initial value for accumulating.
     - parameter sequence: The sequence to reduce.

     - returns: The result of the iteration.

     */

    public class func reduceWhile<A, B: SequenceType>
        (predicate: (A, B.Generator.Element) -> Bool, iterator: (A, B.Generator.Element) -> A, startingWith initialValue: A, in sequence: B) -> A {

        var acc = initialValue

        for element in sequence {
            if(!predicate(acc, element)) {
                return acc
            }

            acc = iterator(acc, element)
        }

        return acc
    }

    /**

     Like reduce, reduceWhile returns a single item by iterating through the list,
     successively calling the iterator function. reduceWhile also takes a predicate that is evaluated before each step. If the predicate returns false, it "short-circuits" the iteration and returns the current value of the accumulator.

     - parameter predicate: The predicate. It is passed the accumulator and the current element.

     - returns: A curried function that accepts the initial value and sequence and
     returns the result of the iteration.

     */

    public class func reduceWhile<A, B: SequenceType>
        (predicate: (A, B.Generator.Element) -> Bool) -> (iterator: (A, B.Generator.Element) -> A) -> (startingWith: A) -> (in: B) -> A {
        return curry(reduceWhile)(predicate)
    }

}

// swiftlint:enable line_length
