//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.
        - parameter array: List of values to execute the transform.

        - rethrows: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B, for array: [A]) rethrows -> [B] {
        return try array.flatMap(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.

        - throws: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B) -> (for: [A]) throws -> [B] {
        return curry(chain)(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.
        - parameter array: List of values to execute the transform.

        - rethrows: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B?, for array: [A]) rethrows -> [B] {
        return try array.flatMap(transform)
    }

    /**

        Maps a list and concatenates the result. Chain is also known as flatMap.

        - parameter transform: Function that transforms the value.

        - throws: Passed through from flapMap.

        - returns: Transformed result.

    */

    public class func chain<A, B>(transform: A throws -> B?) -> (for: [A]) throws -> [B] {
        return curry(chain)(transform)
    }

}
