//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

extension R {

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.
        - parameter array: The list of values.

        - returns: true if the predicate is true for any value, false is all don't.

     */

    public class func any<Element, Collection where Collection: CollectionType, Element == Collection.Generator.Element>(function: Element -> Bool, in collection: Collection) -> Bool {
        for value in collection {
            if function(value) {
                return true
            }
        }
        return false
    }

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.

        - returns: true if the predicate is true for any value, false is all don't.

     */

    public class func any<Element>(function: Element -> Bool) -> (in: [Element]) -> Bool {
        return curry(any)(function)
    }

}
