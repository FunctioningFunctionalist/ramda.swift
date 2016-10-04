//
// Created by Justin Guedes on 2016/09/17.
//

import Foundation

extension R {

    /**

        Checks if the input value is nil.

        - parameter value: Optional value.

        - returns: True if value is nil, false otherwise.

    */

    public class func isNil<T>(value: T?) -> Bool {
        return value == nil
    }

}
