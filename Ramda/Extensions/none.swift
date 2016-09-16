//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns true is no element matches the predicate.

        - parameter function: The predicate function.
        - parameter collection: The collection.

        - returns: True if no elements match the predicate, false if any do match.

    */

    public class func none<A, B where B: CollectionType, A == B.Generator.Element>(function: A -> Bool, in collection: B) -> Bool {
        let opposite = complement(function)
        return all(opposite, in: collection)
    }

    /**

        Returns true is no element matches the predicate.

        - parameter function: The predicate function.

        - returns: A curried function that accepts the array and returns true if
        no elements match the predicate, false if any do match.

    */

    public class func none<T>(function: T -> Bool) -> (in: [T]) -> Bool {
        return curry(none)(function)
    }

}

// swiftlint:disable line_length
