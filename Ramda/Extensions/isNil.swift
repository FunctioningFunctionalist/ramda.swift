//
//  isNil.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Checks if the input value is nil

     - parameter value: Any optional value

     - returns: A boolean that confirms if the value is nil

     */
    public class func isNil(_ value: Any?) -> Bool {
        return value == nil ? true : false
    }

}
