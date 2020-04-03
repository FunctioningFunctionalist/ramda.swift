//
//  lte.swift
//  Ramda
//
//  Created by Christian Leovido on 03/04/2020.
//

import Foundation

extension R {

    /// Returns true if the first argument is less than or equal to the second; false otherwise.
    /// - Parameters:
    ///   - firstValue: any Comparable value
    ///   - secondValue: any Comparable value
    public class func lte<T: Comparable>(_ firstValue: T, _ secondValue: T) -> Bool {
        return firstValue <= secondValue
    }

    /// Returns a partial function for lte that accepts another argument of the same type T
    ///
    /// - Parameters:
    ///   - value: the value to be compared
    public class func lte<T: Comparable>(_ partial: T) -> (T) -> Bool {
        return { newValue in
            return partial <= newValue
        }
    }

}
