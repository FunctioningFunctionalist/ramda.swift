//
//  adjust.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/05.
//  Copyright © 2016 NPO. All rights reserved.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Applies a function to the value at the given index of collection,
        returning a new copy of the collection with the element at the given
        index replaced with the result of the function application.

        - parameter function: The function to apply.
        - parameter index: The index of the object.
        - parameter collection: A collection whose value at the supplied index will be replaced.

        - returns: A copy of the supplied collection-like object with the element
                    at index replaced with the value returned by applying function
                    to the existing element.

     */

    public class func adjust<A, B, C where B: RangeReplaceableCollectionType, A == B.Generator.Element, C == B.Index>(function: A -> A, at index: C, in collection: B) -> B {
        var result = collection
        if collection.indices.contains(index) {
            let newValue = function(result[index])
            result.insert(newValue, atIndex: index)
        }
        return result
    }

    /**

        Applies a function to the value at the given index of collection,
        returning a new copy of the collection with the element at the given
        index replaced with the result of the function application.

        - parameter function: The function to apply.

        - returns: A curried function that accepts the second condition to produce
                    the result

     */

    public class func adjust<T>(function: T -> T) -> (at: Int) -> (in: [T]) -> [T] {
        return curry(adjust)(function)
    }

}

// swiftlint:enable valid_docs
