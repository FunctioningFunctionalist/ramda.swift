//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Removes the sub-list of list starting at index start and
        containing count elements.

        - parameter index: Index to start removing elements.
        - parameter count: The number of elements to remove.
        - parameter collection: The collection to remove from.

        - returns: New collection with removed elements.

    */

    public class func remove<T: RangeReplaceableCollection>(_ index: T.Index, for count: Int, in collection: T) -> T where T.Index == Int {
        var newCollection = collection
        newCollection.removeSubrange(index..<R.add(index, to: count))
        return newCollection
    }

    /**

        Removes the sub-list of list starting at index start and
        containing count elements.

        - parameter index: Index to start removing elements.

        - returns: A curried function that accepts the count and
        collection and returns a new collection with removed elements.

    */

    public class func remove<T: RangeReplaceableCollection>(_ index: T.Index) -> (_ for: Int) -> (_ in: T) -> T where T.Index == Int {
        return curry(remove)(index)
    }

}

// swiftlint:enable line_length
