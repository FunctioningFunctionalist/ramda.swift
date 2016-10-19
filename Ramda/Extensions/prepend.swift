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

    public class func prepend<A, B: RangeReplaceableCollection>(_ element: A, to collection: B) -> B where A == B.Iterator.Element, Int == B.Index {
        return R.insert(0, with: element, in: collection)
    }

    /**

        Returns a new list with the given element at the front, followed by the
        contents of the list.

        - parameter element: The element to prepend.

        - returns: A curried function that accepts the collection and returns a
        collection with prepended element.

    */

    public class func prepend<A, B: RangeReplaceableCollection>(_ element: A) -> (_ to: B) -> B where A == B.Iterator.Element, Int == B.Index {
        return curry(prepend)(element)
    }
}

// swiftlint:enable line_length
