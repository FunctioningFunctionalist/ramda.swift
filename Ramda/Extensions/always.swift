//
// Created by Justin Guedes on 2016/09/07.
//

import Foundation

extension R {

    /**

        Creates a function that returns the value passed in as an argument.
        This function is known as const, constant, or K (for K combinator)
        in other languages and libraries.

        - parameter value: The value that will be returned from the result function.

        - returns: A function that returns "value"

    */

    public class func always<Element>(value: Element) -> () -> Element {
        return { value }
    }

}
