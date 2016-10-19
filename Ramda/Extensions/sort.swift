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

    public class func sort<A, B: Sequence>(_ comparator: (A, A) -> Bool, for collection: B) -> [A] where A == B.Iterator.Element {
        return collection.sorted(by: comparator)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.

        - returns: A curried function that accepts the collection and returns
        an array sorted by the comparator.

    */

    public class func sort<A, B: Sequence>(_ comparator: (A, A) -> Bool) -> (_ for: B) -> [A] where A == B.Iterator.Element {
        return curry(sort)(comparator)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.
        - parameter collection: The collection to sort.

        - returns: An array sorted by the comparator.

    */

    public class func sort<A, B: Sequence>(_ comparator: @escaping (A, A) -> Int, for collection: B) -> [A] where A == B.Iterator.Element {
        return sort { R.lt(comparator($0, $1), than: 0) } (collection)
    }

    /**

        Returns an array sorted according to the comparator function.

        - parameter comparator: The comparator function.

        - returns: A curried function that accepts the collection and returns
        an array sorted by the comparator.

    */

    public class func sort<A, B: Sequence>(_ comparator: @escaping (A, A) -> Int) -> (_ for: B) -> [A] where A == B.Iterator.Element {
        return curry(sort)(comparator)
    }

}

// swiftlint:enable line_length
