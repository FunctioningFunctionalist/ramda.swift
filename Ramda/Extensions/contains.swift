//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Returns true is the element exists in the list.

        - parameter element: The element to find in the list.
        - parameter array: The list to search for the element.

        - returns: Returns true if the element exists in the list, false otherwise.

    */

    public class func contains<T: Comparable>(element: T, in array: [T]) -> Bool {
        return any({ $0 == element }, in: array)
    }

    /**

        Returns true is the element exists in the list.

        - parameter element: The element to find in the list.

        - returns: Returns true if the element exists in the list, false otherwise.

    */

    public class func contains<T: Comparable>(element: T) -> (in: [T]) -> Bool {
        return curry(contains)(element)
    }

}
