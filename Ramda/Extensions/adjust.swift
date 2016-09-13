//
//  adjust.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/05.
//  Copyright © 2016 NPO. All rights reserved.
//

import Foundation

extension R {

    /**

        Applies a function to the value at the given index of an array,
        returning a new copy of the array with the element at the given
        index replaced with the result of the function application.

        - parameter function: The function to apply.
        - parameter index: The index of the object.
        - parameter array: An array whose value at the supplied index will be replaced.

        - returns: A copy of the supplied array-like object with the element
                    at index replaced with the value returned by applying function
                    to the existing element.

     */

    public class func adjust<Element, Collection, Index
                            where Collection: RangeReplaceableCollectionType,
                            Element == Collection.Generator.Element,
                            Index == Collection.Index>(function: Element -> Element, at index: Index, in collection: Collection) -> Collection {
        var result = collection
        if collection.indices.contains(index) {
            let newValue = function(result[index])
            result.insert(newValue, atIndex: index)
        }
        return result
    }

    /**

        Applies a function to the value at the given index of an array,
        returning a new copy of the array with the element at the given
        index replaced with the result of the function application.

        - parameter function: The function to apply.

        - returns: A partial function that accepts the second condition to produce
                    the result

     */

    public class func adjust<Element>(function: Element -> Element) -> (at: Int) -> (in: [Element]) -> [Element] {
        return curry(adjust)(function)
    }

}
