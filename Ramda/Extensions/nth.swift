//
//  nth.swift
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation
extension R {
    /**
     
     Returns the nth element of the given list or string. If n is negative the
     element at index length + n is returned.
     
     - parameter offset: The offset into the array
     - parameter array: The array to consider.
     
     - returns: The value at the offset.
     
     */
    public class func nth<T>(_ offset: Int, _ array: [T]) -> T {
        let index = offset < 0 ? array.count + offset : offset
        return array[index]
    }

    /**
     
     Returns a new list by plucking the same named property off all objects in
     the list supplied.
     
     - parameter offset:The offset into the array
     - returns: Curried function
     
     */

    public class func nth<T>(_ offset: Int) -> (_ array: [T]) -> T {
        return curry(nth)(offset)
    }

}
