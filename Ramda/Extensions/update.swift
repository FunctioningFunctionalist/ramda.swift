//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Returns a new copy of the array with updated value.

        - parameter index: The index to update the array.
        - parameter value: The updated value.
        - parameter array: The array to update the value in.

        - returns: A new copy of the array with the updated value.

    */

    public class func update<T>(index: Int, value: T, in array: [T]) -> [T] {
        var result: [T] = array
        if index < array.count && index > -1 {
            result[index] = value
        }
        return result
    }

    /**

        Returns a new copy of the array with updated value.

        - parameter index: The index to update the array.

        - returns: A new copy of the array with the updated value.

    */

    public class func update<T>(index: Int) -> (value: T) -> (in: [T]) -> [T] {
        return curry(update)(index)
    }

}
