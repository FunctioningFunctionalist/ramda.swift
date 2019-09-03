//
//  concat.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/03.
//

import Foundation

extension R {

    /**

     Returns the result of concatenating strings.

     - parameter lhs: The first string
     - parameter rhs: The second string

     - returns: String

     */

    public class func concat(_ lhs: String, _ rhs: String) -> String {
        return lhs + rhs
    }

    /**

     Returns the result of concatenating strings.

     - parameter lhs: The first string

     - returns: Curried function

     */

    public class func concat(_ lhs: String) -> (_ rhs: String) -> String {
        return curry(concat)(lhs)
    }

    /**

     Returns the result of concatenating the given lists.

     - parameter lhs: The first list
     - parameter rhs: The second list

     - returns: Bool

     */

    public class func concat<T>(_ lhs: [T], _ rhs: [T]) -> [T] {
        return lhs + rhs
    }

    /**

     Returns the result of concatenating the given lists.

     - parameter lhs: The first list

     - returns: Curried function

     */

    public class func concat<T>(_ lhs: [T]) -> (_ rhs: [T]) -> [T] {
        return curry(concat)(lhs)
    }
}
