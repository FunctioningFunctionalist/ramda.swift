//
//  eqProps.swift
//  Ramda
//
//  Created by Christian Leovido on 28/09/2019.
//

import Foundation

extension R {

    /**

     Reports whether two objects have the same value, in R.equals terms, for the specified property.

     Useful as a curried predicate.


     - parameter function: Function with two parameters conforming to Equatable

     - returns:True if the values map to the same value in the codomain; false otherwise.

     */

    public class func eqProps<A: Equatable>
                        (_ value: AnyHashable,
                         _ object1: [AnyHashable: A],
                         _ object2: [AnyHashable: A]) -> Bool {

        return object1[value] == object2[value] ? true : false

    }

}
