//
// Created by TYRONE AVNIT on 2016/09/06.
//

import Foundation

extension R {

    /**

        Returns true if all elements of the list match the predicate,
        false if there are any that don't.
        Dispatches to the all method of the second argument, if present.
        Acts as a transducer if a transformer is given in list position

        - parameter function: The predicate function.
        - parameter array: The array to consider.

        - returns: true if the predicate is satisfied by every element, false otherwise.

     */

    public class func all<Element, Collection where Collection: CollectionType, Element == Collection.Generator.Element>(function: Element -> Bool, in collection: Collection) -> Bool {
        for element in collection {
            if !function(element) {
                return false
            }
        }
        return true
    }

    /**

        Returns true if all elements of the list match the predicate,
        false if there are any that don't.
        Dispatches to the all method of the second argument, if present.
        Acts as a transducer if a transformer is given in list position

        - parameter function: The predicate function.

        - returns: A partial function that accepts the second condition to produce
                    the result

     */

    public class func all<Element>(function: Element -> Bool) -> (in: [Element]) -> Bool {
        return curry(all)(function)
    }

}
