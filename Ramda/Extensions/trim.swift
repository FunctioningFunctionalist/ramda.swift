//
//  trim.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 17/04/2020.
//

extension R {

    /// Removes (strips) whitespace from both ends of the string.
    ///
    /// - Parameter text: The string to trim
    ///
    /// - Returns: Trimmed version of `text`.
    public class func trim(_ text: String) -> String {
        return text.trimmingCharacters(in: .whitespaces)
    }

}
