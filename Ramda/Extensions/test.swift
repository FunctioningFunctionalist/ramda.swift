//
// Created by Justin Guedes on 2016/09/26.
//

import Foundation

infix operator =~ { associativity left }

public func =~ (string: String, regex: String) -> Bool {
    do {
        let regex = try NSRegularExpression(pattern: regex, options: [])
        let range = NSRange(location: 0, length: string.characters.count)
        let matches = regex.matchesInString(string, options: [], range: range)
        let notEmpty: [NSTextCheckingResult] -> Bool = R.isEmpty >>> R.not
        return notEmpty(matches)
    } catch {
        return false
    }
}

extension R {

    /**

        Determines whether a given string matches a given regular expression.

        - parameter regex: The regular expression.
        - parameter string: The string to check against.

        - returns: True if string matches the regular expression, false
        otherwise.

    */

    public class func test(regex: String, string: String) -> Bool {
        return string =~ regex
    }

    /**

        Determines whether a given string matches a given regular expression.

        - parameter regex: The regular expression.

        - returns: A curried function that accepts the string and returns true
        if string matches the regular expression, false otherwise.

    */

    public class func test(regex: String) -> (string: String) -> Bool {
        return curry(test)(regex)
    }

}
