//
//  match.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 16/04/2020.
//

import Foundation

extension R {

    /// Tests a regular expression against a String. Note that this function will return an empty array when there are no matches.
    /// This differs from String.prototype.match which returns null when there are no matches.
    ///
    /// - Parameters:
    ///   - regex: A regular expression.
    ///   - text: The string to match against
    /// - Returns Array The list of matches or empty array.
    public class func match(_ regex: String, _ text: String) -> [String] {

        let regex = try? NSRegularExpression(pattern: regex, options: [])
        let nsString = NSString(string: text)
        let results = regex?.matches(in: text,
                                     options: [],
                                     range: NSRange(location: 0,
                                                    length: nsString.length))

        return results?.map { nsString.substring(with: $0.range) } ?? []

    }

    public class func match(_ regex: String) -> (String) -> [String] {
        return curry(match)(regex)
    }

}
