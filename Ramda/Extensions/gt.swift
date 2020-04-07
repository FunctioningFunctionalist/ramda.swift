//
//  gt.swift
//  Ramda
//
//  Created by Christian Leovido on 03/04/2020.
//

import Foundation

extension R {

    /// Returns true if the first argument is greater than the second; false otherwise.
    /// - Parameters:
    ///   - first: the first value to be compared
    ///   - second: the second value to be compared
    public class func gt<T: Comparable>(_ firstValue: T, _ secondValue: T) -> Bool {
        return firstValue > secondValue
    }

    /// Returns a partial function for gt that accepts another argument of the same type T
    ///
    /// - Parameters:
    ///   - value: the value to be compared
    public class func gt<T: Comparable>(_ value: T) -> (T) -> Bool {
        return { newValue in
            return newValue > value
        }
    }

}
