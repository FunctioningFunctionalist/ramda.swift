//
// Created by TYRONE AVNIT on 2016/09/06.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns true if all elements of the list match the predicate,
        false if there are any that don't.
        Dispatches to the all method of the second argument, if present.
        Acts as a transducer if a transformer is given in list position

        - parameter function: The predicate function.
        - parameter sequence: The sequence to consider.

        - returns: True if the predicate is satisfied by every element, false otherwise.

     */

    public class func all<A, B>(_ function: (A) -> Bool, in sequence: B) -> Bool where B: Sequence, A == B.Iterator.Element {
        for element in sequence {
            if !function(element) {
                return false
            }
        }
        return true
    }

    /**

        Returns true if all elements of the list match the predicate,
        false if there are any that don't.
        Dispatches to the all method of the second argument, if present.
        Acts as a transducer if a transformer is given in list position

        - parameter function: The predicate function.

        - returns: A curried function that accepts the second condition to produce
                    the result

     */

    public class func all<T>(_ function: (T) -> Bool) -> (_ in: [T]) -> Bool {
        return curry(all)(function)
    }

}

// swiftlint:enable line_length
