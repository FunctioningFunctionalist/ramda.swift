//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

       Applies the function with the argument list and returns the result.

        - parameter function: The function to apply with the argument list.
        - parameter sequence: A sequence of values to pass into the function.

        - returns: The result of the function with the arguments passed in.

    */

    public class func apply<A, B, C: SequenceType where C.Generator.Element == A>(function: (A...) -> B, with sequence: C) -> B {
        typealias Function = C -> B
        let newFunction = unsafeBitCast(function, Function.self)
        return newFunction(sequence)
    }

    /**

       Applies the function with the argument list and returns the result.

        - parameter function: The function to apply with the argument list.

        - returns: A curried function that accepts an array and returns the result
        of the function with the arguments passed in.

    */

    public class func apply<A, B>(function: (A...) -> B) -> (with: [A]) -> B {
        return curry(apply)(function)
    }

}

// swiftlint:enable line_length
