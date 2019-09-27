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
        return string.first == nil ? "" : String(string.first!)
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
