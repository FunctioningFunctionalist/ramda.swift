//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

extension R {

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter element: The element to append to the list.
        - parameter array: The list to append the element to.

        - returns: The new list with the appended element.

    */

    public class func append<T>(element: T, to array: [T]) -> [T] {
        var result = array
        result.append(element)
        return result
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter element: The element to append to the list.

        - returns: The new list with the appended element.

    */

    public class func append<T>(element: T) -> (to: [T]) -> [T] {
        return curry(append)(element)
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter elements: The elements to append to the list.
        - parameter array: The list to append the elements to.

        - returns: The new list with the appended elements.

    */

    public class func append<T>(elements: [T], to array: [T]) -> [T] {
        var result = array
        result.appendContentsOf(elements)
        return result
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter elements: The elements to append to the list.

        - returns: The new list with the appended elements.

    */

    public class func append<T>(elements: [T]) -> (to: [T]) -> [T] {
        return curry(append)(elements)
    }

}
