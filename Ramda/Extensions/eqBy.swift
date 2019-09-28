//
//  eqBy.swift
//  Ramda
//
//  Created by Christian Leovido on 28/09/2019.
//

import Foundation

extension R {

    /**

     Takes a function and two values in its domain
     and returns true if the values map to the same value in the codomain; false otherwise.

     - parameter function: Function with two parameters conforming to Equatable

     - returns:True if the values map to the same value in the codomain; false otherwise.

     */

    public class func eqBy<A: Equatable>
        (_ function: @escaping (A, A) -> (Bool),
         _ value1: A,
         _ value2: A) -> Bool {
        return R.curry(function)(value1)(value2)
    }

}
