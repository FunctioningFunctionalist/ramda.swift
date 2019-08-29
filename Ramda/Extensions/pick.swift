//
//  pluck.swift
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation

// swiftlint:disable large_tuple
extension R {
    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - parameter item: The item to consider.
     
     - returns: Tuple of values for thje given keypaths.
     
     */
    public class func pick<T, U, V>(_ keyPaths: (KeyPath<T, U>, KeyPath<T, V>), _ item: T) -> (U, V) {
        return (
            item[keyPath: keyPaths.0],
            item[keyPath: keyPaths.1]
        )
    }

    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - returns: Curried function
     
     */

    public class func pick<T, U, V>(_ keyPaths: (KeyPath<T, U>, KeyPath<T, V>)) -> (_ item: T) -> (U, V) {
        return curry(pick)(keyPaths)
    }

    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - parameter item: The item to consider.
     
     - returns: Tuple of values for thje given keypaths.

     */
    public class func pick<T, U, V, W>(_ keyPaths: (KeyPath<T, U>, KeyPath<T, V>, KeyPath<T, W>), _ item: T)
        -> (U, V, W) {
        return (
            item[keyPath: keyPaths.0],
            item[keyPath: keyPaths.1],
            item[keyPath: keyPaths.2]
        )
    }

    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - returns: Curried function
     
     */

    public class func pick<T, U, V, W>(_ keyPaths: (KeyPath<T, U>, KeyPath<T, V>, KeyPath<T, W>))
        -> (_ item: T) -> (U, V, W) {
        return curry(pick)(keyPaths)
    }

    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - parameter item: The item to consider.
     
     - returns: Tuple of values for thje given keypaths.

     */
    public class func pick<T, U, V, W, X>(_ keyPaths: (
        KeyPath<T, U>,
        KeyPath<T, V>,
        KeyPath<T, W>,
        KeyPath<T, X>),
                                          _ item: T)
        -> (U, V, W, X) {
            return (
                item[keyPath: keyPaths.0],
                item[keyPath: keyPaths.1],
                item[keyPath: keyPaths.2],
                item[keyPath: keyPaths.3]
            )
    }

    /**
     
     Returns a tuple containing partial copy of an object containing only the properties specified.
     
     - parameter keyPath: The keyPaths of the properties
     - returns: Curried function
     
     */

    public class func pick<T, U, V, W, X>(_ keyPaths: (KeyPath<T, U>, KeyPath<T, V>, KeyPath<T, W>, KeyPath<T, X>))
        -> (_ item: T) -> (U, V, W, X) {
            return curry(pick)(keyPaths)
    }
}

// swiftlint:enable large_tuple
// swiftlint:enable line_l
