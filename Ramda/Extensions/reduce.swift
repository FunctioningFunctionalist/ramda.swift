//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a single item by iterating through the list, successively calling
        the iterator function and passing it an accumulator value and the current
        value from the array, and then passing the result to the next call.

        - parameter iterator: The function that produces accumulator result.
        - parameter initialValue: The initial value for accumulating.
        - parameter sequence: The sequence to reduce.

        - returns: The result of the iteration.

    */

    public class func reduce<A, B: SequenceType>(iterator: (A, B.Generator.Element) -> A, startingWith initialValue: A, in sequence: B) -> A {
        return sequence.reduce(initialValue, combine: iterator)
    }

    /**

        Returns a single item by iterating through the list, successively calling
        the iterator function and passing it an accumulator value and the current
        value from the array, and then passing the result to the next call.

        - parameter iterator: The function that produces accumulator result.

        - returns: A curried function that accepts the initial value and sequence and
        returns the result of the iteration.

    */

    public class func reduce<A, B: SequenceType>(iterator: (A, B.Generator.Element) -> A) -> (startingWith: A) -> (in: B) -> A {
        return curry(reduce)(iterator)
    }

}

// swiftlint:enable line_length
