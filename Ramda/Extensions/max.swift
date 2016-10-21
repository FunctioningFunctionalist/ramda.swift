//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**

        Returns the larger of the two arguments.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: The larger of the two arguments.

    */

    public class func max<T: Comparable>(_ lhs: T, or rhs: T) -> T {
        return R.gt(lhs, than: rhs) ? lhs : rhs
    }

    /**

        Returns the larger of the two arguments.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the second operand
        and returns the larger of the two arguments.

    */

    public class func max<T: Comparable>(_ lhs: T) -> (_ or: T) -> T {
        return curry(max)(lhs)
    }

}
