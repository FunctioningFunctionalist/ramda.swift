//
// Created by Justin Guedes on 2016/09/19.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns the nth element of the collection. If 'n' is
        negative the element at index length + 'n' is returned.

        - parameter index: The index of the element in the collection.
        - parameter collection: The collection.

        - returns: The nth element if exists, else nil.

    */

    public class func nth<A: Collection, B: Collection>(_ index: Int, in collection: A) -> B.Iterator.Element?
                         where B == A.SubSequence, A.IndexDistance == Int {
        let newIndex = index < 0 ? index + R.length(collection) : index
        return R.first(R.drop(newIndex, in: collection))
    }

    /**

        Returns the nth element of the collection. If 'n' is
        negative the element at index length + 'n' is returned.

        - parameter index: The index of the element in the collection.

        - returns: A curried function that accepts the collection and returns
        the nth element if exists, else nil.

    */

    public class func nth<A: Collection, B: Collection>(_ index: Int) -> (_ in: A) -> B.Iterator.Element?
                         where B == A.SubSequence, A.IndexDistance == Int {
        return curry(nth)(index)
    }

}

// swiftlint:enable line_length
