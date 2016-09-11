//
// Created by Justin Guedes on 2016/09/09.
//

import Foundation

extension R {

    /**

       Applies a list of functions to a list of values.

        - parameter functions: An array of functions to apply to each value.
        - parameter array: An array of values.

        - returns: An array of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B>(functions: [A -> B], to array: [A]) -> [B] {
        return functions.flatMap { (function: A -> B) in
            array.map { (element: A) in
                function(element)
            }
        }
    }

    /**

        Applies a list of functions to a list of values.

        - parameter functions: The functions to apply to each value.

        - returns: An array of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B>(functions: (A -> B)...) -> (to: [A]) -> [B] {
        return curry(ap)(functions)
    }

    /**

        Applies a list of functions to a list of values.

        - parameter functions: The functions to apply to each value.

        - returns: An array of results of applying each of the functions to all of values in turn.

    */

    public class func ap<A, B>(functions: [A -> B]) -> (to: [A]) -> [B] {
        return curry(ap)(functions)
    }

}
