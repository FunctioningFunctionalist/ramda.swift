//
//  propOr.swift
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation
extension R {
    /**
     
     Returns a new list by plucking the same named property off all objects in
     the list supplied.
     
     - parameter keyPath: The keyPath of the optional property
     - parameter default: The default value
     - parameter object: The item to consider.
     
     - returns: The list of values for the given key.
     
     */
    public class func propOr<T, U>(_ keyPath: KeyPath<T, U?>, _ `default`: U, _ object: T) -> U {
        return propOrImpl(keyPath, `default`, object)
    }

    /**
     
     Returns a new list by plucking the same named property off all objects in
     the list supplied.
     
     - parameter keyPath: The keyPath of the optional property
     - parameter default: The default value
     - returns: Curried function
     
     */
    
    public class func propOr<T, U>(_ keyPath: KeyPath<T, U?>, _ `default`: U) -> (_ object: T) -> U {
        return curry(propOrImpl)(keyPath)(`default`)
    }
    
    // just specifying curry(propOr) above confuses the Swift compiler, so extract a function
    // with an unambiguous name.
    private class func propOrImpl<T, U>(_ keyPath: KeyPath<T, U?>, _ `default`: U, _ object: T) -> U {
        return defaultTo(`default`)(prop(keyPath)(object))
    }

}
