//
// Created by Justin Guedes on 2016/09/13.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Finds the set (i.e. no duplicates) of all elements in the first list not contained in
        the second list.

        - parameter collection: The first list.
        - parameter collection2: The second list.

        - returns: An array of the difference between the two lists.

    */

    public class func difference<A: CollectionType, B: CollectionType where A.Generator.Element: Comparable, A.Generator.Element == B.Generator.Element>(collection: A, from collection2: B) -> [A.Generator.Element] {
        let check: (A.Generator.Element, B) -> Bool = R.complement(R.contains)
        return collection.filter { (element: A.Generator.Element) -> Bool in check(element, collection2) }
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
