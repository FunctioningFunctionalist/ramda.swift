//
//  reduceBy.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/12/16.
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

     - parameter iterator: The function that produces accumulator result.
     - parameter initialValue: The initial value for accumulating.
     - parameter keyFn: The function that maps the list's element into a key.
     - parameter sequence: The sequence to reduce.

     - returns: An object with the output of keyFn for keys, mapped to the output of
     valueFn for elements which produced that key when passed to keyFn.

     */

    public class func reduceBy<A, B: Sequence, C: Hashable>
        (_ iterator: @escaping (A, B.Iterator.Element) -> A, startingWith initialValue: A, functionForKeys keyFn: @escaping (B.Iterator.Element) -> C, in sequence: B) -> [C: A] {

        typealias ReduceSignature = (_ startingWith: [C: A]) -> (_ in: B) -> [C: A]

        let reduceBy: ReduceSignature = R.reduce { (acc, element) in
            var result = acc
            let key = keyFn(element)

            if let keyValue = result[key] {
                result[key] = iterator(keyValue, element)
                return result
            }

            result[key] = iterator(initialValue, element)
            return result
        }

        return reduceBy([C: A]())(sequence)
    }

    /**

     Groups the elements of the list according to the result of calling the
     String-returning function keyFn on each element and reduces the elements
     of each group to a single value via the reducer function valueFn. This function
     is basically a more general groupBy function. Acts as a transducer if a
     transformer is given in list position.

     - parameter iterator: The function that produces accumulator result.

     - returns: A curried function that accepts the initial value and sequence and
     returns the keyFn.

     */

    public class func reduceBy<A, B: Sequence, C: Hashable>
        (_ iterator: @escaping (A, B.Iterator.Element) -> A) -> (_ startingWith: A) -> (_ functionForKeys: @escaping (B.Iterator.Element) -> C) -> (_ in: B) -> [C: A] {
        return curry(reduceBy)(iterator)
    }
}

// swiftlint:enable line_length
