//
//  pluck.swift
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation
extension R {
    /**
     
     Returns a new list by plucking the same named property off all objects in
     the list supplied.
     
     - parameter keyPath: The keyPath of the property
     - parameter object: The array to consider.
     
     - returns: The list of values for the given key.
     
     */
    public class func pluck<T, U>(_ keyPath: KeyPath<T, U>, _ array: [T]) -> [U] {
        return map(prop(keyPath), array)
    }
    
    /**
     
     Returns a new list by plucking the same named property off all objects in
     the list supplied.
     
     - parameter keyPath: The keyPath of the property
     - returns: Curried function
     
     */
    
    public class func pluck<T, U>(_ keyPath: KeyPath<T, U>) -> (_ array: [T]) -> [U] {
        return curry(pluck)(keyPath)
    }
    
    /**
     
     Returns a new list by plucking the indexed item off allarrays in
     the list supplied.
     
     - parameter offset: The offset into the array
     - parameter object: The array to consider.
     
     - returns: The list of values for the given key.
     
     */
    public class func pluck<T>(_ offset: Int, _ array: [[T]]) -> [T] {
        return map(nth(offset), array)
    }
    
    /**
     
     Returns a new list by plucking the indexed item off allarrays in
     the list supplied.

     - parameter offset: The offset into the array
     - returns: Curried function
     
     */
    
    public class func pluck<T>(_ offset: Int) -> (_ array: [[T]]) -> [T] {
        return curry(pluck)(offset)
    }
    
    
}
