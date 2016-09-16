//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Drops 'amount' of elements from the collection.

        - parameter amount: The nth element to drop.
        - parameter collection: The collection to drop the elements.

        - returns: The collection with all but the first 'amount' of elements.

    */

    public class func drop<T: RangeReplaceableCollectionType>(amount: Int, in collection: T) -> T.SubSequence {
        return collection.dropFirst(amount)
    }

    /**

       Drops 'amount' of elements from the array.

       - parameter amount: The nth element to drop.

       - returns: A curried function that accepts an array and returns the
       array with all but the first 'amount' of elements.

   */

    public class func drop<T>(amount: Int) -> (in: [T]) -> ArraySlice<T> {
        return curry(drop)(amount)
    }

}

// swiftlint:enable line_length
