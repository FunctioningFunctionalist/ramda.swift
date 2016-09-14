//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a new copy of the array with updated value.

        - parameter index: The index to update the collection.
        - parameter value: The updated value.
        - parameter collection: The collection to update the value in.

        - returns: A new copy of the collection with the updated value.

    */

    public class func update<A, B, C where B: RangeReplaceableCollectionType, A == B.Generator.Element, C == B.Index>(index: C, value: A, in collection: B) -> B {
        var result = collection
        if collection.indices.contains(index) {
            result.removeAtIndex(index)
            result.insert(value, atIndex: index)
        }
        return result
    }

    /**

        Returns a new copy of the array with updated value.

        - parameter index: The index to update the array.

        - returns: A curried function that accepts a value and array and returns a
        new copy of the array with the updated value.

    */

    public class func update<T>(index: Int) -> (value: T) -> (in: [T]) -> [T] {
        return curry(update)(index)
    }

}

// swiftlint:enable line_length
