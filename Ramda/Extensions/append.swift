//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter element: The element to append to the list.
        - parameter collection: The list to append the element to.

        - returns: The new list with the appended element.

    */

    public class func append<A, B: RangeReplaceableCollection>(_ element: A, to collection: B) -> B where B.Iterator.Element == A {
        var result = collection
        result.append(element)
        return result
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter element: The element to append to the list.

        - returns: A curried function that accepts an array and returns the new array with
        the appended element.

    */

    public class func append<T>(_ element: T) -> (_ to: [T]) -> [T] {
        return curry(append)(element)
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter elements: The elements to append to the list.
        - parameter collection: The list to append the elements to.

        - returns: The new list with the appended elements.

    */

    public class func append<T: RangeReplaceableCollection>(_ elements: T, to collection: T) -> T {
        var result = collection
        result.append(contentsOf: elements)
        return result
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter elements: The elements to append to the list.

        - returns: A curried function that accepts a collection and returns the new list with
        the appended elements.

    */

    public class func append<T: RangeReplaceableCollection>(_ elements: T) -> (_ to: T) -> T {
        return curry(append)(elements)
    }

}

// swiftlint:enable line_length
