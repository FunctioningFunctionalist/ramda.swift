//
// Created by Justin Guedes on 2016/09/26.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns the first element of the list which matches the predicate,
        or nil if no element matches.

        - parameter predicate: The function that returns a bool.
        - parameter sequence: The sequence to check.

        - returns: The first found element, or nil if none found.

    */

    private class func find<A>(predicate: (A) -> Bool, in sequence: [A]) -> A? {
        for element in sequence {
            if predicate(element) {
                return element
            }
        }
        return nil
    }

    /**

        Returns the first element of the list which matches the predicate,
        or nil if no element matches.

        - parameter predicate: The function that returns a bool.

        - returns: A curried function that accepts a sequence and returns
        the first found element, or nil if none found.

    */

    public class func find<A>(predicate: (A) -> Bool) -> (in: [A]) -> A? {
        return curry(find)(predicate)
    }

}

// swiftlint:enable line_length
