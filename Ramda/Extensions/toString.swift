//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**

        Returns the string representation of the value.

        - parameter value: The value to convert to string.

        - returns: String representation of value.

    */

    public class func toString<T: CustomStringConvertible>(value: T) -> String {
        return value.description
    }

}
