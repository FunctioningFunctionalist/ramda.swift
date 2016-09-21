//
// Created by Justin Guedes on 2016/09/21.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns position of the first occurrence of an item in the collection.

        - parameter element: The element to find.
        - parameter collection: The collection.

        - returns: The index of the first occurrence of the element, else nil
        if not found.

    */

    public class func indexOf<A: Comparable, B: CollectionType where A == B.Generator.Element>(element: A, in collection: B) -> B.Index? {
        return collection.indexOf(R.equals(element))
    }

    /**

        Returns position of the first occurrence of an item in the collection.

        - parameter element: The element to find.

        - returns: A curried function that accepts the collection and returns
        the index of the first occurrence of the element, else nil if not found.

    */

    public class func indexOf<A: Comparable, B: CollectionType where A == B.Generator.Element>(element: A) -> (in: B) -> B.Index? {
        return curry(indexOf)(element)
    }

}

// swiftlint:enable line_length
