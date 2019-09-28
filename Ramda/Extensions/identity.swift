//
//  Identity.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     A function that does nothing but return the parameter supplied to it. Good
     as a default or placeholder function

     - parameter value: The value to return
     - returns: The input value, `x`.

     */

    public class func identity<T>(_ value: T) -> T {
        return value
    }

}
