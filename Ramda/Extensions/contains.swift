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

    public class func contains<T: Comparable, U: CollectionType where T == U.Generator.Element>(element: T, in collection: U) -> Bool {
        return any({ $0 == element }, in: collection)
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
