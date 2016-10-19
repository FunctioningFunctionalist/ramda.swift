//
// Created by Justin Guedes on 2016/09/09.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

       Applies a list of functions to a list of values.

        - parameter functions: A sequence of functions to apply to each value.
        - parameter sequence: A sequence of values.

        - returns: An array of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B, C: Sequence, D: Sequence>(_ functions: C, to sequence: D) -> [B] where C.Iterator.Element == ((A) -> B), D.Iterator.Element == A {
        return functions.flatMap { (function: (A) -> B) in
            sequence.map { (element: A) in
                function(element)
            }
        }
    }

    /**

        Applies a list of functions to a list of values.

        - parameter functions: The functions to apply to each value.

        - returns: A curried function that accepts an array and returns an array
        of results of applying each of the functions to all of values in turn.

    */

//    public class func ap<A, B>(_ functions: (A) -> B...) -> (_ to: [A]) -> [B] {
//        let a: [(A) -> B] = functions
//        return curry(ap)(functions)
//    }

    /**

        Applies a list of functions to a list of values.

        - parameter functions: The functions to apply to each value.

        - returns: A curried function that accepts an array and returns an array
        of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B>(_ functions: [(A) -> B]) -> (_ to: [A]) -> [B] {
        return curry(ap)(functions)
    }

}

// swiftlint:enable line_length
