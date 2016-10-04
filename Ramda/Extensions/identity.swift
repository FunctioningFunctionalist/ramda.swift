//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**

        A function that does nothing and returns the supplied parameter.

        - parameter value: The value to return.

        - returns: The supplied parameter.

    */

    public class func identity<T>(value: T) -> T {
        return value
    }

}
