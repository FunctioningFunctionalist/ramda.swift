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

    public class func without<A: Sequence, B: Sequence>(_ sequence: A, from sequence2: B) -> [A.Iterator.Element]
                             where A.Iterator.Element: Comparable, A.Iterator.Element == B.Iterator.Element {
        return R.difference(sequence2, from: sequence)
    }

    /**

        Returns a new list without values in the first argument.

        - parameter sequence: The first sequence.

        - returns: A curried function that accepts the second sequence and
        returns an array of values not found in the first sequence.

    */

    public class func without<A: Sequence, B: Sequence>(_ sequence: A) -> (_ from: B) -> [A.Iterator.Element]
                             where A.Iterator.Element: Comparable, A.Iterator.Element == B.Iterator.Element {
        return curry(without)(sequence)
    }

}

// swiftlint:enable line_length
