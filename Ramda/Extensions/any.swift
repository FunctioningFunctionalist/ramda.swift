//
// Created by Justin Guedes on 2016/09/10.
//

import Foundation

extension R {

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.
        - parameter array: The list of values.

        - returns: true if the predicate is true for any value, false is all don't.

     */

    public class func any<T>(function: T -> Bool, array: [T]) -> Bool {
        for value in array {
            if function(value) {
                return true
            }
        }
        return false
    }

    /**

        Returns true if any elements of the list match the predicate, false if all don't.

        - parameter function: The predicate function.

        - returns: true if the predicate is true for any value, false is all don't.

     */

    public class func any<T>(function: T -> Bool) -> (array: [T]) -> Bool {
        return { array in
            return any(function, array: array)
        }
    }

}
