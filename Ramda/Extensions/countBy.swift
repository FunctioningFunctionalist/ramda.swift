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

     Counts the elements of a list according to how many match each value of a key generated
     by the supplied function. Returns an object mapping the keys produced by fn to the number
     of occurrences in the list. Note that all keys are coerced to strings because of how
     JavaScript objects work

     - parameter functionForKeys: The function used to map values to keys.
     - parameter sequence: The list to count elements from.

     - returns: An object mapping keys to number of occurrences in the list.

     */

    public class func countBy<B: Sequence, C: Hashable>(_ functionForKeys: @escaping (B.Iterator.Element) -> C, in sequence: B) -> [C: Int] {
        typealias Signature = (@escaping (B.Iterator.Element) -> C) -> (B) -> [C: Int]
        let result: Signature = R.reduceBy({ (acc, element) in acc + 1 })(0)
        return result(functionForKeys)(sequence)
    }

    /**

     Counts the elements of a list according to how many match each value of a key generated
     by the supplied function. Returns an object mapping the keys produced by fn to the number
     of occurrences in the list. Note that all keys are coerced to strings because of how
     JavaScript objects work

     - parameter functionForKeys: The function used to map values to keys.

     - returns: An object mapping keys to number of occurrences in the list.

     */

    public class func countBy<B: Sequence, C: Hashable>(_ functionForKeys: @escaping (B.Iterator.Element) -> C) -> (_ in: B) -> [C: Int] {
        typealias Signature = (@escaping (B.Iterator.Element) -> C) -> (B) -> [C: Int]
        let result: Signature = R.reduceBy({ (acc, element) in acc + 1 })(0)
        return result(functionForKeys)
    }
}

// swiftlint:enable line_length
