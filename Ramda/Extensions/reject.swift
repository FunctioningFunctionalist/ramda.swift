//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        The complement of filter.

        - parameter function: The predicate function.
        - parameter sequence: The sequence to filter.

        - returns: A filtered array of elements that are not accepted by
        the predicate.

    */

    public class func reject<A, B: Sequence>(_ function: @escaping (A) -> Bool, in sequence: B) -> [A] where A == B.Iterator.Element {
        return R.filter(R.complement(function), in: sequence)
    }

    /**

        The complement of filter.

        - parameter function: The predicate function.

        - returns: A curried function that accepts the sequence and returns
        a filtered array of elements that are not accepted by the predicate.

    */

    public class func reject<A, B: Sequence>(_ function: @escaping (A) -> Bool) -> (_ in: B) -> [A] where A == B.Iterator.Element {
        return curry(reject)(function)
    }

}

// swiftlint:enable line_length
