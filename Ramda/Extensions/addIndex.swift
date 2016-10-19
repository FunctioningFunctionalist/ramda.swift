//
// Created by TYRONE AVNIT on 2016/09/09.
//

import Foundation

extension R {

    /**

        Creates a new list iteration function from an existing one by adding two new parameters
        to its callback function: the current index, and the entire list.

        - parameter sequence: A value type that conforms to the protocol SequenceType

        - returns: An altered list iteration function that passes (index, list) to its callback

    */

    public class func addIndex<T: Sequence>(_ sequence: T) -> EnumeratedSequence<T> {
        return sequence.enumerated()
    }

}
