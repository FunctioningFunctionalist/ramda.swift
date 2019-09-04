//
//  and.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/02.
//

import Foundation

extension R {

    /**

    Returns true if both arguments are true; false otherwise

     - parameter firstArgument: The keyPath of the property
     - parameter secondArgument: The object to query

     - returns: Bool

     */
    
    public class func and(_ firstArgument: Bool, _ secondArgument: Bool) -> Bool {
        return firstArgument && secondArgument
    }

    /**

     Returns true if both arguments are true; false otherwise

     - parameter firstArgument: The keyPath of the property

     - returns: Curried function

     */

    public class func and(_ firstArgument: Bool) -> (_ secondArgument: Bool) -> Bool {
        return curry(and)(firstArgument)
    }

}
