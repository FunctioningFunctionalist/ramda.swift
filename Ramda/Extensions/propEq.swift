//
//  propEq.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/29.
//

import Foundation

extension R {

    /**

     Returns true if the specified object property is equal, in R.equals terms, to the given value; false otherwise.

     - parameter boolean: The Bool value

     - returns: Bool

     */

    public class func propEq<T: Equatable, E>(_ property: (String, T), _ object: E) -> Bool {
        let (pLabel, pValue) = property
        let child = Mirror(reflecting: object).children.first { child in
            guard let value = child.value as? T else { return false }
            return equals(child.label, pLabel) && equals(value, pValue)
        }

        return isSome(child)
    }

    /**

     Returns true if the specified object property is equal, in R.equals terms, to the given value; false otherwise.

     - parameter boolean: The Bool value

     - returns: A curried function

     */

    public class func propEq<T: Equatable, E>(_ property: (String, T)) -> (E) -> Bool {
        return curry(propEq)(property)
    }

}
