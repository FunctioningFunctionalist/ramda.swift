//
//  countBy.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/16/16.
//
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

     Groups the elements of the list according to the result of calling the
     String-returning function keyFn on each element and reduces the elements
     of each group to a single value via the reducer function valueFn. This function
     is basically a more general groupBy function. Acts as a transducer if a
     transformer is given in list position.

     - parameter functionForKeys: The function that maps the list's element into a key.

     - returns: An object with the output of keyFn for keys, mapped to the output of
     valueFn for elements which produced that key when passed to keyFn.

     */

    public class func countBy<B: SequenceType, C: Hashable>(functionForKeys: B.Generator.Element -> C) -> (in: B) -> [C: Int] {
        typealias Signature = ((B.Generator.Element) -> C) -> (B) -> [C: Int]
        let result: Signature = R.reduceBy({ (acc, element) in acc + 1 })(startingWith: 0)
        return result(functionForKeys)
    }
}

// swiftlint:enable line_length
