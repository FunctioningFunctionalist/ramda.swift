//
// Created by Justin Guedes on 2016/09/22.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Inserts the supplied element into the list, at index.

        - parameter index: Index to insert the element.
        - parameter element: The element to insert.
        - parameter collection: The collection to insert the element.

         - returns: New collection with the inserted element.

    */

    public class func insert<A, B: RangeReplaceableCollectionType, C
                            where A == B.Generator.Element, C == B.Index>(index: C, with element: A, in collection: B) -> B {
        var newCollection = collection
        newCollection.insert(element, atIndex: index)
        return newCollection
    }

    /**

        Inserts the supplied element into the list, at index.

        - parameter index: Index to insert the element.

         - returns: A curried function that accepts the element and collection
         and returns a new collection with the inserted element.

    */

    public class func insert<A, B: RangeReplaceableCollectionType, C
                            where A == B.Generator.Element, C == B.Index>(index: C) -> (with: A) -> (in: B) -> B {
        return curry(insert)(index)
    }
}

// swiftlint:enable line_length
