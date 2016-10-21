//
// Created by Justin Guedes on 2016/09/21.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a new list by pulling every item out if it and putting
        them in a new list, depth-first.

        - parameter collection: The collection.

        - returns: New list with only one depth.

    */

    public class func flatten<T: Collection>(_ collection: T) -> FlattenCollection<T> where T.Iterator.Element: Collection {
        return collection.joined()
    }

}

// swiftlint:enable line_length
