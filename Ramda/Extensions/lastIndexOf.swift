//
// Created by Justin Guedes on 2016/09/21.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns position of the last occurrence of an item in the collection.

        - parameter element: The element to find.
        - parameter collection: The collection.

        - returns: The index of the last occurrence of the element, else nil
        if not found.

    */

    public class func lastIndexOf<A: Comparable, B: Collection>(_ element: A, in collection: B) -> Int? where A == B.Iterator.Element, B.IndexDistance == Int {
        guard let index = R.reverse(collection).index(where: R.equals(element)) else { return nil }
        return R.subtract(R.length(collection), minus:R.add(index, to: 1))
    }

    /**

        Returns position of the last occurrence of an item in the collection.

        - parameter element: The element to find.

        - returns: A curried function that accepts the collection and returns
        the index of the last occurrence of the element, else nil if not found.

    */

    public class func lastIndexOf<A: Comparable, B: Collection>(_ element: A) -> (_ in: B) -> Int? where A == B.Iterator.Element, B.IndexDistance == Int {
        return curry(lastIndexOf)(element)
    }

}

// swiftlint:enable line_length
