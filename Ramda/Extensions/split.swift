//
//  split.swift
//  Ramda
//
//  Created by Christian Leovido on 17/04/2020.
//

extension R {

    /// Splits a string into an array of strings based on the given separator.
    ///
    /// See also join.
    ///
    /// - Parameters:
    ///   - separator: The pattern.
    ///   - value: The string to separate into an array.
    /// - Returns: [String] The array of strings from `text` separated by `separator`.
    public class func split(_ separator: Character, _ text: String) -> [String] {
        return text.split(separator: separator).map({ String($0) })
    }

    public class func split(_ separator: String, _ text: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: separator)
            let results = regex.matches(in: text,
                                        range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch {
            return []
        }
    }

    public class func split(_ separator: Character) -> (String) -> [String] {
        return curry(split)(separator)
    }

}
