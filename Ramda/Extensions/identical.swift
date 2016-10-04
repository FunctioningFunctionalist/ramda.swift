//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**

        Checks if the 'lhs' is identical to the 'rhs' with regards to
        memory addresses.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: True if the 'lhs' is pointing to the same memory address
        as the 'rhs', false otherwise.

    */

    public class func identical<T>(inout lhs: T, inout to rhs: T) -> Bool {
        return withUnsafePointers(&lhs, &rhs) {
            return $0 == $1
        }
    }

}
