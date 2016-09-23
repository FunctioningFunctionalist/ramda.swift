//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a new list with the given element at the front, followed by the
        contents of the list.

        - parameter element: The element to prepend.
        - parameter collection: The collection to prepend the element to.

        - returns: Collection with prepended element.

    */

    public class func prepend<A, B: RangeReplaceableCollectionType where A == B.Generator.Element, Int == B.Index>(element: A, to collection: B) -> B {
        return R.insert(0, with: element, in: collection)
    }

    /**

        Returns a new list with the given element at the front, followed by the
        contents of the list.

        - parameter element: The element to prepend.

        - returns: A curried function that accepts the collection and returns a
        collection with prepended element.

    */

    public class func prepend<A, B: RangeReplaceableCollectionType where A == B.Generator.Element, Int == B.Index>(element: A) -> (to: B) -> B {
        return curry(prepend)(element)
    }
}

// swiftlint:enable line_length
