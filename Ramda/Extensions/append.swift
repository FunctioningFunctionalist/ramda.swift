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

    public class func append<T>(element: T, array: [T]) -> [T] {
        var result = array
        result.append(element)
        return result
    }

    /**

        Returns a new list containing the contents of the given list, followed by the given element.

        - parameter element: The element to append to the list.

        - returns: The new list with the appended element.

    */

    public class func append<T>(element: T) -> (array: [T]) -> [T] {
        return { array in
            return append(element, array: array)
        }
    }

}
