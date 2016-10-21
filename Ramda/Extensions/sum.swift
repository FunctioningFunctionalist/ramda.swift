//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Adds together all the elements of the sequence.

        - parameter sequence: The sequence of numbers.

        - returns: Total of all elements.

    */

    public class func sum<A: BasicArithmeticType, B: Sequence>(_ sequence: B) -> A where A == B.Iterator.Element {
        return R.reduce(+, startingWith: A.zero, in: sequence)
    }

}

// swiftlint:enable line_length
