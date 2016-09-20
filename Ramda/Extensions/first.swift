//
// Created by Justin Guedes on 2016/09/20.
//

import Foundation

extension R {

    /**

        Returns the first element of the collection.

        - parameter collection: The collection.

        - returns: First element if exists, else nil.

    */

    public class func first<T: CollectionType>(collection: T) -> T.Generator.Element? {
        return collection.first
    }

}
