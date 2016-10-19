//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        A function wrapping calls to the two functions in an || operation. Note this function
        is short-circuited.

        - parameter lhs: The first predicate.
        - parameter rhs: The second predicate.

        - returns: True if the first predicate is true or the second, else false.

    */

    public class func either<T>(_ lhs: @escaping (T) -> Bool, or rhs: @escaping (T) -> Bool) -> (T) -> Bool {
        return { element in
            return lhs(element) || rhs(element)
        }
    }

    /**

        A function wrapping calls to the two functions in an || operation. Note this function
        is short-circuited.

        - parameter lhs: The first predicate.

        - returns: A curried function that accepts the second predicate and returns true if
        the first predicate is true or the second, else false.

    */

    public class func either<T>(_ lhs: @escaping (T) -> Bool) -> (_ or: @escaping (T) -> Bool) -> (T) -> Bool {
        return curry(either)(lhs)
    }

}
