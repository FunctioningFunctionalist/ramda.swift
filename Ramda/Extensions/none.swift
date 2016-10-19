//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns true is no element matches the predicate.

        - parameter function: The predicate function.
        - parameter sequence: The sequence.

        - returns: True if no elements match the predicate, false if any do match.

    */

    public class func none<A, B>(_ function: @escaping (A) -> Bool, in sequence: B) -> Bool where B: Sequence, A == B.Iterator.Element {
        let opposite = complement(function)
        return all(opposite, in: sequence)
    }

    /**

        Returns true is no element matches the predicate.

        - parameter function: The predicate function.

        - returns: A curried function that accepts the array and returns true if
        no elements match the predicate, false if any do match.

    */

    public class func none<T>(_ function: @escaping (T) -> Bool) -> (_ in: [T]) -> Bool {
        return curry(none)(function)
    }

}

// swiftlint:disable line_length
