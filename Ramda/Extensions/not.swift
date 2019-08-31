//
//  not.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     A function that returns the ! of its argument. It will return true when passed
     false-y value, and false when passed a truth-y one.

     - parameter boolean: The Bool value

     - returns: Bool

     */

    public class func not(_ boolean: Bool) -> Bool {
        return !boolean
    }

}
