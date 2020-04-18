//
//  test.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 17/04/2020.
//

extension R {

    /// Determines whether a given string matches a given regular expression.
    ///
    /// See also match.
    ///
    /// - Parameters:
    ///   - separator: The pattern.
    ///   - value: The string to separate into an array.
    ///
    /// - Returns: Bool
    public class func `test`(_ regex: String, _ text: String) -> Bool {

        let regex = try? NSRegularExpression(pattern: regex)
        guard let results = regex?.matches(in: text,
                                          range: NSRange(text.startIndex..., in: text)) else {
                                            return false
        }
        return results.count > 0 ? true : false

    }

    public class func `test`(_ regex: String) -> (String) -> Bool {
        curry(test)(regex)
    }

}
