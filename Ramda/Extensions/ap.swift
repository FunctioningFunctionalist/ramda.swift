//
// Created by Justin Guedes on 2016/09/09.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

       Applies a list of functions to a list of values.

        - parameter functions: A collection of functions to apply to each value.
        - parameter collection: A collection of values.

        - returns: An array of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B, C: CollectionType, D: CollectionType where C.Generator.Element == (A -> B), D.Generator.Element == A>(functions: C, to collection: D) -> [B] {
        return functions.flatMap { (function: A -> B) in
            collection.map { (element: A) in
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

    public class func ap<A, B>(functions: (A -> B)...) -> (to: [A]) -> [B] {
        return curry(ap)(functions)
    }

    /**

        Applies a list of functions to a list of values.

        - parameter functions: The functions to apply to each value.

        - returns: A curried function that accepts an array and returns an array
        of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B>(functions: [A -> B]) -> (to: [A]) -> [B] {
        return curry(ap)(functions)
    }

}

// swiftlint:enable line_length
