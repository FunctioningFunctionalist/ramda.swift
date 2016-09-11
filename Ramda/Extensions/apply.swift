//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

       Applies the function with the argument list and returns the result.

        - parameter function: The function to apply with the argument list.
        - parameter array: An array of values to pass into the function.

        - returns: The result of the function with the arguments passed in.

    */

    public class func apply<A, B>(function: (A...) -> B, with array: [A]) -> B {
        typealias Function = [A] -> B
        let newFunction = unsafeBitCast(function, Function.self)
        return bind(newFunction, with: array)()
    }

    /**

       Applies the function with the argument list and returns the result.

        - parameter function: The function to apply with the argument list.

        - returns: The result of the function with the arguments passed in.

    */

    public class func apply<A, B>(function: (A...) -> B) -> (with: [A]) -> B {
        return curry(apply)(function)
    }

}
