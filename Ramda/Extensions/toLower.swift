//
//  toLower.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 17/04/2020.
//

extension R {

    /// The lower case version of a string.
    ///
    /// See also toUpper.
    ///
    /// - Parameters:
    ///   - text: The string to lower case.
    ///
    /// - Returns: The lower case version of `text`.
    public class func toLower(_ text: String) -> String {
        return text.lowercased()
    }

}
