//
//  prop.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/08/31.
//

import Foundation

extension R {

    /**

     Returns a function that when supplied an object returns the indicated
     property of that object

     - parameter keyPath: The keyPath of the property
     - parameter object: The object to query

     - returns: The value of the property

     */
    public class func prop<T, U>(_ keyPath: KeyPath<T, U>, object: T) -> U {
        return object[keyPath: keyPath]
    }

    /**

     Returns a function that when supplied an object returns the indicated
     property of that object

     - parameter keyPath: The keyPath of the property
     - returns: Curried function

     */

    public class func prop<T, U>(_ keyPath: KeyPath<T, U>) -> (_ object: T) -> U {
        return curry(prop)(keyPath)
    }

}
