//
//  head.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Returns the first element of the given list or string.

     - parameter value: String

     - returns: String

     */

    public class func head(_ value: String) -> String {

        guard let char = value.first else {
            return ""
        }

        return String(char)

    }

    /**

    Returns the first element of the given list or string.

    - parameter value: [String]

    - returns: String?

    */
    public class func head(_ value: [String]) -> String? {
        return value.first
    }

}
