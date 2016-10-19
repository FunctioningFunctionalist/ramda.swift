//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Returns 'value' if not null, else returns default value.

        - parameter defaultValue: Default value to return if value is not null.
        - parameter value: Value to return if not null.

        - returns: Returns 'value' is not null, else default value.

    */

    public class func defaultTo<T>(_ defaultValue: T, value: T?) -> T {
        return value ?? defaultValue
    }

    /**

        Returns 'value' if not null, else returns default value.

        - parameter defaultValue: Default value to return if value is not null.

        - returns: A curried function that accepts the value and returns 'value'
        is not null, else default value.

    */

    public class func defaultTo<T>(_ defaultValue: T) -> (_ value: T?) -> T {
        return curry(defaultTo)(defaultValue)
    }

}
