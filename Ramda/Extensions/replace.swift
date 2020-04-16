//
//  replace.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 16/04/2020.
//

import Foundation

extension R {

    /// Replace a substring or regex match in a string with a replacement.

    /// The first two parameters correspond to the parameters of the String.prototype.replace() function, so the second parameter can also be a function.
    ///
    /// - Parameters:
    ///   - regex: A regular expression or a substring to match.
    ///   - replacement: The string to replace the matches with.
    ///   - text: The String to do the search and replacement in.
    /// - Returns String The result.
    public class func replace(_ regex: String,
                              _ replacement: String,
                              _ text: String) -> String {

        guard let range = text.range(of: regex, options: .regularExpression) else {
            return text
        }

        var newText = text
        newText.replaceSubrange(range, with: replacement)

        return newText

    }

    public class func replace(_ regex: String) -> (String) -> (String) -> String {
        return curry(replace)(regex)
    }

}
