//
//  dropLast.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Returns a list containing all but the last n elements of the given list.

     Acts as a transducer if a transformer is given in list position.
     See also takeLast, drop, dropWhile, dropLastWhile.

     - parameter iteration: Number of last elements to remove
     - parameter string: The string to remove the values from

     - returns: A new string with the last n elements removed

     */
    public class func dropLast(_ iteration: Int, _ string: String) -> String {

        var newString = string

        for _ in 0..<iteration {
            if newString.count == 0 {
                break
            } else {
                newString.removeLast()
            }
        }

        return newString
    }

    /**

    Returns a list containing all but the last n elements of the given list.

    Acts as a transducer if a transformer is given in list position.
    See also takeLast, drop, dropWhile, dropLastWhile.

    - parameter iteration: Number of last elements to remove
    - parameter arrayString: The array of strings to remove the values from

    - returns: A new array of strings with the last n elements removed

    */
    public class func dropLast<T: Equatable>(_ iteration: Int, _ array: [T]) -> [T] {

        var newArrayString = array

        for index in 0..<iteration where array.count > index {

            newArrayString.removeLast()

        }

        return newArrayString
    }

}
