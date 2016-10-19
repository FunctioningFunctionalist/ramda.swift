//
// Created by Justin Guedes on 2016/09/22.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a string made by inserting the separator between each
        element and concatenating all the elements into a single string.

        - parameter separator: Separator to insert between each element.
        - parameter sequence: Sequence to concatenate.

        - returns: String with sequence joined by separators.

    */

    public class func join<T: Sequence>(_ separator: String, in sequence: T) -> String where T.Iterator.Element == String {
        return sequence.joined(separator: separator)
    }

    /**

        Returns a string made by inserting the separator between each
        element and concatenating all the elements into a single string.

        - parameter separator: Separator to insert between each element.

        - returns: A curried function that accepts a sequence and returns a
        string with sequence joined by separators.

    */

    public class func join<T: Sequence>(_ separator: String) -> (_ in: T) -> String where T.Iterator.Element == String {
        return curry(join)(separator)
    }

}

// swiftlint:enable line_length
