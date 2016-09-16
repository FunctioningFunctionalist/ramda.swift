//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Filters a collection and returns an array of the filtered elements.

        - parameter function: The predicate function.
        - parameter collection: The collection to filter.

        - returns: A filtered array of elements that are accepted by the
        predicate.

    */

    public class func filter<A, B: CollectionType where A == B.Generator.Element>(function: A -> Bool, in collection: B) -> [A] {
        return collection.filter { function($0) }
    }

    /**

        Filters a collection and returns an array of the filtered elements.

        - parameter function: The predicate function.

        - returns: A curried function that accepts a collection and returns a
        filtered array of elements that are accepted by the predicate.

    */

    public class func filter<A, B: CollectionType where A == B.Generator.Element>(function: A -> Bool) -> (in: B) -> [A] {
        return curry(filter)(function)
    }
}

// swiftlint:enable line_length
