//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Returns all but the first element of the given collection.

        - parameter collection: The collection.

        - returns: New collection with all but first element or
        original.

    */

    public class func tail<T: RangeReplaceableCollection>(_ collection: T) -> T {
        var newCollection = collection
        newCollection.removeFirst()
        return newCollection
    }

}
