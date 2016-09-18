//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.
        - parameter sequence: List of values to execute the transform.

        - rethrows: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B, C: SequenceType where C.Generator.Element == A>(transform: A throws -> B, for sequence: C) rethrows -> [B] {
        return try sequence.flatMap(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.

        - throws: Passed through from flapMap.

        - returns: A curried function that accepts an array and returns the transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B) -> (for: [A]) throws -> [B] {
        return curry(chain)(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.
        - parameter sequence: List of values to execute the transform.

        - rethrows: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B, C: SequenceType where C.Generator.Element == A>(transform: A throws -> B?, for sequence: C) rethrows -> [B] {
        return try sequence.flatMap(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.

        - throws: Passed through from flapMap.

        - returns: A curried function that accepts an array and returns the transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B?) -> (for: [A]) throws -> [B] {
        return curry(chain)(transform)
    }

}

// swiftlint:enable line_length
