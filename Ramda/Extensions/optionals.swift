//
//  optionals.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Determines if an optional does not contain a value

     - parameter optional: An optional

     - returns: Bool

     */

    public class func isNone<A>(_ optional: A?) -> Bool {
        return not(isSome(optional))
    }

    /**

     Determines if an optional contains a value

     - parameter optional: An optional

     - returns: Bool

     */

    public class func isSome<A>(_ optional: A?) -> Bool {
        return optional != nil
    }

}
