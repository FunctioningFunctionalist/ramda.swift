//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    public enum ClampError: ErrorType {
        case MinGreaterThanMax
    }

    /**

        Clamps the value between the min and max.

        - parameter min: The minimum value.
        - parameter max: The maximum value.
        - parameter value: The value to clamp.

        - throws: 'ClampError.MinGreaterThanMax' if 'min' is greater than 'max'.

        - returns: The clamped value.

    */

    public class func clamp<T: Comparable>(min: T, and max: T, with value: T) throws -> T {
        if min > max {
            throw ClampError.MinGreaterThanMax
        }

        return  value < min ? min :
                value > max ? max :
                value
    }

    /**

        Clamps the value between the min and max.

        - parameter min: The minimum value.

        - throws: 'ClampError.MinGreaterThanMax' if 'min' is greater than 'max'.

        - returns: The clamped value.

    */

    public class func clamp<T: Comparable>(min: T) -> (and: T) -> (with: T) throws -> T {
        return curry(clamp)(min)
    }

}
