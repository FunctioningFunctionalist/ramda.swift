//
// Created by Justin Guedes on 2016/09/17.
//

import Foundation

extension R {

    /**

        Checks if collection is empty.

        - parameter collection: The collection to check.

        - returns: True is collection is empty, false otherwise.

    */

    public class func isEmpty<T: CollectionType>(collection: T) -> Bool {
        return collection.isEmpty
    }

}
