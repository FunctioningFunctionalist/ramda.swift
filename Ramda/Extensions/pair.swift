//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Takes two arguments and returns an array containing the arguments.

        - parameter lhs: The first argument.
        - parameter rhs: The second argument.

        - returns: An array containing the arguments.

    */

    public class func pair<T>(_ lhs: T, and rhs: T) -> [T] {
        return [lhs, rhs]
    }

    /**

        Takes two arguments and returns an array containing the arguments.

        - parameter lhs: The first argument.

        - returns: A curried function that accepts the second argument and
        returns an array containing the arguments.

    */

    public class func pair<T>(_ lhs: T) -> (_ and: T) -> [T] {
        return curry(pair)(lhs)
    }

}
