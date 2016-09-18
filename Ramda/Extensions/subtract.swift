//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Subtracts second argument from the first.

        - parameter lhs: The left hand side operand.
        - parameter rhs: The right hand side operand.

        - returns: Returns the difference between the 'lhs' and the 'rhs'.

    */

    public class func subtract<T: BasicArithmeticType>(lhs: T, minus rhs: T) -> T {
        return lhs - rhs
    }

    /**

        Subtracts second argument from the first.

        - parameter lhs: The left hand side operand.

        - returns: A curried function that accepts the last operand and returns
        the difference between the 'lhs' and the 'rhs'.

    */

    public class func subtract<T: BasicArithmeticType>(lhs: T) -> (minus: T) -> T {
        return curry(subtract)(lhs)
    }

}
