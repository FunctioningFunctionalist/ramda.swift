//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns true is the element exists in the list.

        - parameter element: The element to find in the list.
        - parameter sequence: The list to search for the element.

        - returns: Returns true if the element exists in the list, false otherwise.

    */

    public class func contains<A: Comparable, B: Sequence>(_ element: A, in sequence: B) -> Bool where A == B.Iterator.Element {
        return any({ $0 == element }, in: sequence)
    }

    /**

        Returns true is the element exists in the list.

        - parameter element: The element to find in the list.

        - returns: A curried function that accepts an array and returns true if
        the element exists in the list, false otherwise.

    */

    public class func contains<T: Comparable>(_ element: T) -> (_ in: [T]) -> Bool {
        return curry(contains)(element)
    }

}

// swiftlint:enable line_length
