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

    public class func forEach<A, B: SequenceType where A == B.Generator.Element>(function: A -> (Void), in sequence: B) -> B {
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

    public class func forEach<A, B: CollectionType where A == B.Generator.Element>(function: A -> (Void)) -> (in: B) -> B {
        return curry(forEach)(function)
    }

}

// swiftlint:enable line_length
