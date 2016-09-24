//
// Created by Justin Guedes on 2016/09/24.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns a new list without values in the first argument.

        - parameter sequence: The first sequence.
        - parameter sequence2: The second sequence to compare with.

        - returns: An array of values not found in the first sequence.

    */

    public class func without<A: SequenceType, B: SequenceType
                             where A.Generator.Element: Comparable, A.Generator.Element == B.Generator.Element>(sequence: A, from sequence2: B) -> [A.Generator.Element] {
        return R.difference(sequence2, from: sequence)
    }

    /**

        Returns a new list without values in the first argument.

        - parameter sequence: The first sequence.

        - returns: A curried function that accepts the second sequence and
        returns an array of values not found in the first sequence.

    */

    public class func without<A: SequenceType, B: SequenceType
                             where A.Generator.Element: Comparable, A.Generator.Element == B.Generator.Element>(sequence: A) -> (from: B) -> [A.Generator.Element] {
        return curry(without)(sequence)
    }

}

// swiftlint:enable line_length
