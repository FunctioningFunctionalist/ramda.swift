//
// Created by Justin Guedes on 2016/09/22.
//

import Foundation

extension R {

    /**

        Takes a function and two values, and returns whichever value
        produces the smaller result when passed to the provided function.

        - parameter function: The function to create the element to compare.
        - parameter lhs: The first input for the function.
        - parameter rhs: The second input for the function.

        - returns: The smaller element.

    */

    public class func minBy<A, B: Comparable>(_ function: (A) -> B, with lhs: A, or rhs: A) -> B {
        return R.min(function(lhs), or: function(rhs))
    }

    /**

        Takes a function and two values, and returns whichever value
        produces the smaller result when passed to the provided function.

        - parameter function: The function to create the element to compare.

        - returns: A curried function that accepts the first and second element to
        return the smaller element.

    */

    public class func minBy<A, B: Comparable>(_ function: (A) -> B) -> (_ with: A) -> (_ or: A) -> B {
        return curry(minBy)(function)
    }

}
