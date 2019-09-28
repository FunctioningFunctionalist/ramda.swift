//
//  inc.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Increments its argument.

     - parameter value: Number to add to

     - returns: Number + 1

     */

    public class func inc<A: BasicArithmeticType>(_ number: A) -> A {
        return number + A.one
    }

}
