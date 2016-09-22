//
// Created by Justin Guedes on 2016/09/22.
//

import Foundation

extension R {

    /**

        Returns a function which returns its nth argument.

        - parameter index: Index of the element.

        - returns: A function that takes a vararg argument and
        returns the element at the index.

    */

    public class func nthArg<T>(index: Int) -> (in: T...) -> T? {
        return { params in
            let array = params as [T]
            return nth(index, in: array)
        }
    }

}
