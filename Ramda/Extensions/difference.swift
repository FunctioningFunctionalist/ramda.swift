//
// Created by Justin Guedes on 2016/09/13.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Finds the set (i.e. no duplicates) of all elements in the first list not contained in
        the second list.

        - parameter sequence: The first list.
        - parameter sequence2: The second list.

        - returns: An array of the difference between the two lists.

    */

    public class func difference<A: SequenceType, B: SequenceType where A.Generator.Element: Comparable, A.Generator.Element == B.Generator.Element>(sequence: A, from sequence2: B) -> [A.Generator.Element] {
        let check: (A.Generator.Element, B) -> Bool = R.complement(R.contains)
        return R.filter { (element: A.Generator.Element) -> Bool in check(element, sequence2) } (in: sequence)
    }

    /**

        Finds the set (i.e. no duplicates) of all elements in the first list not contained in
        the second list.

        - parameter array: The first array.

        - returns: A curried function that accepts the second array and returns an array of
        the difference between the two lists.

    */

    public class func difference<T: Comparable>(array: [T]) -> (from: [T]) -> [T] {
        return curry(difference)(array)
    }

}

// swiftlint:enable line_length
