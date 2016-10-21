//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Drops 'amount' of elements from the collection.

        - parameter amount: The nth element to drop.
        - parameter sequence: The sequence to drop the elements.

        - returns: The sequence with all but the first 'amount' of elements.

    */

    public class func drop<T: Sequence>(_ amount: Int, in sequence: T) -> T.SubSequence {
        return sequence.dropFirst(amount)
    }

    /**

       Drops 'amount' of elements from the array.

       - parameter amount: The nth element to drop.

       - returns: A curried function that accepts an array and returns the
       array with all but the first 'amount' of elements.

   */

    public class func drop<T>(_ amount: Int) -> (_ in: [T]) -> ArraySlice<T> {
        return curry(drop)(amount)
    }

}

// swiftlint:enable line_length
