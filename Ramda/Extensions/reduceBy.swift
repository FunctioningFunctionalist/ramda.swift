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

     - parameter valueFn: The function that produces accumulator result.
     - parameter valueAcc: The initial value for accumulating.
     - parameter keyFn: The function that maps the list's element into a key.
     - parameter list: The sequence to reduce.

     - returns: An object with the output of keyFn for keys, mapped to the output of
     valueFn for elements which produced that key when passed to keyFn.

     */

    public class func reduceBy<A, B: SequenceType, C: Hashable, D: SequenceType where A == D.Generator.Element>
        (valueFn: (B, A) -> B, valueAcc: B, keyFn: A -> C, list: D) -> [C: B] {

        typealias ReduceSignature = (startingWith: [C: B]) -> (in: D) -> [C: B]

        let reduceBy: ReduceSignature = R.reduce { (acc, element) in
            var result = acc
            let key = keyFn(element)

            if let keyValue = result[key] {
                result[key] = valueFn(keyValue, element)
                return result
            }

            result[key] = valueFn(valueAcc, element)
            return result
        }

        return reduceBy(startingWith: [C: B]())(in: list)
    }

    /**

     Groups the elements of the list according to the result of calling the
     String-returning function keyFn on each element and reduces the elements
     of each group to a single value via the reducer function valueFn. This function
     is basically a more general groupBy function. Acts as a transducer if a
     transformer is given in list position.

     - parameter valueFn: The function that produces accumulator result.

     - returns: A curried function that accepts the initial value and sequence and
     returns the keyFn.

     */

    public class func reduceBy<A, B: SequenceType, C: Hashable, D: SequenceType where A == D.Generator.Element>
        (valueFn: (B, A) -> B) -> (valueAcc: B) -> (keyFn: A -> C) -> (list: D) -> [C: B] {
        return curry(reduceBy)(valueFn)
    }
}

// swiftlint:enable line_length
