//
// Created by Justin Guedes on 2016/09/15.
//

import Foundation

extension R {

    /**

        Negates a signed number.

        - parameter number: The number to negate.

        - returns: The negated number.

    */

    public class func negate<T: SignedNumber>(_ number: T) -> T {
        return -number
    }

}
