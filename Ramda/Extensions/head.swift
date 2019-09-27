//
//  head.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Returns the first element of the given string.

     - parameter value: String to check

     - returns: The first element of the given string.

     */
    public class func head(_ string: String) -> String {

        guard let char = string.first else {
            return ""
        }

        return String(char)

    }

    /**

    Returns the first element of the given array of strings or nil

    - parameter arrayString: Array of strings to check

    - returns: The first element of the given array of strings or nil

    */
    public class func head(_ arrayString: [String]) -> String? {
        return arrayString.first
    }

}
