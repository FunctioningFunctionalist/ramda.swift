//
//  isNil.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Checks if the input value is nil

     */

    public class func isNil(_ value: Any?) -> Bool {

        guard value == nil else {
            return false
        }

        return true
    }

}
