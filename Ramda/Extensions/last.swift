//
// Created by Justin Guedes on 2016/09/20.
//

import Foundation

extension R {

    /**

        Returns the last element of the collection.

        - parameter collection: The collection.

        - returns: Last element if exists, else nil.

    */

    public class func last<T: Collection>(_ collection: T) -> T.Iterator.Element? {
        return R.first(R.reverse(collection))
    }

}
