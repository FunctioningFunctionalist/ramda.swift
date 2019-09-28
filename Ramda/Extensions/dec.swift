//
//  dec.swift
//  Ramda
//
//  Created by Christian Leovido on 28/09/2019.
//

import Foundation

extension R {

    /**

     Decrements its argument.

     - parameter value: Number to add to

     - returns: Number + 1

     See also inc

     */
    public class func dec<A: BasicArithmeticType>(_ number: A) -> A {

        guard let one = 1 as? A else {
            fatalError()
        }

        return number - one
    }

}
