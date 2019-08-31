//
//  always.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Returns a function that always returns the given value.

     - parameter value: The value to return
     - returns: The constant function.

     */

    public class func always<T>(_ value: T) -> (() -> T) {
        return { return value }
    }

}
