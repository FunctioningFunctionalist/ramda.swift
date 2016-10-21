//
// Created by Justin Guedes on 2016/09/21.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Iterates over the sequence, calling the provided function for each
        element. The function returns the original sequence

        - parameter function: The function to execute on each element.
        - parameter sequence: The sequence to iterate over.

        - returns: The original sequence.

    */

    public class func forEach<A, B: Sequence>(_ function: (A) -> (Void), in sequence: B) -> B where A == B.Iterator.Element {
        sequence.forEach(function)
        return sequence
    }

    /**

        Iterates over the sequence, calling the provided function for each
        element. The function returns the original sequence

        - parameter function: The function to execute on each element.

        - returns: A curried function that accepts the sequence and returns
        the original sequence.

    */

    public class func forEach<A, B: Collection>(_ function: (A) -> (Void)) -> (_ in: B) -> B where A == B.Iterator.Element {
        return curry(forEach)(function)
    }

}

// swiftlint:enable line_length
