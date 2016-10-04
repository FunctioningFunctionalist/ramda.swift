//
// Created by Justin Guedes on 2016/09/24.
//

import Foundation

extension R {

    /**

        Drops 'amount' of elements from the end of the collection.

        - parameter amount: The nth element to drop.
        - parameter sequence: The sequence to drop the elements.

        - returns: The sequence with all but the last 'amount' of elements.

    */

    public class func dropLast<T: SequenceType>(amount: Int, in sequence: T) -> T.SubSequence {
        return sequence.dropLast(amount)
    }

    /**

       Drops 'amount' of elements from the end of the array.

       - parameter amount: The nth element to drop.

       - returns: A curried function that accepts an array and returns the
       array with all but the last 'amount' of elements.

   */

    public class func dropLast<T>(amount: Int) -> (in: [T]) -> ArraySlice<T> {
        return curry(dropLast)(amount)
    }

}
