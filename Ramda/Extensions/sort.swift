//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.
        - parameter collection: The collection to sort.

        - returns: An array sorted by the comparator.

    */

    public class func sort<A, B: CollectionType where A == B.Generator.Element>(comparator: (A, A) -> Bool, for collection: B) -> [A] {
        return collection.sort(comparator)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.

        - returns: A curried function that accepts the collection and returns
        an array sorted by the comparator.

    */

    public class func sort<A, B: CollectionType where A == B.Generator.Element>(comparator: (A, A) -> Bool) -> (for: B) -> [A] {
        return curry(sort)(comparator)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.
        - parameter collection: The collection to sort.

        - returns: An array sorted by the comparator.

    */

    public class func sort<A, B: CollectionType where A == B.Generator.Element>(comparator: (A, A) -> Int, for collection: B) -> [A] {
        return sort { R.lt(comparator($0, $1), than: 0) } (for: collection)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.

        - returns: A curried function that accepts the collection and returns
        an array sorted by the comparator.

    */

    public class func sort<A, B: CollectionType where A == B.Generator.Element>(comparator: (A, A) -> Int) -> (for: B) -> [A] {
        return curry(sort)(comparator)
    }

}

// swiftlint:enable line_length
