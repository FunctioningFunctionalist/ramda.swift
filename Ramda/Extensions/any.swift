//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.
        - parameter collection: The list of values.

        - returns: True if the predicate is true for any value, false is all don't.

     */

    public class func any<A, B where B: CollectionType, A == B.Generator.Element>(function: A -> Bool, in collection: B) -> Bool {
        for value in collection {
            if function(value) {
                return true
            }
        }
        return false
    }

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.

        - returns: A curried function that accepts an array and returns true if the predicate i
        s true for any value, false is all don't.

     */

    public class func any<T>(function: T -> Bool) -> (in: [T]) -> Bool {
        return curry(any)(function)
    }

}

// swiftlint:enable line_length
