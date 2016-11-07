//
// Created by Justin Guedes on 2016/09/26.
//

import Foundation

precedencegroup RegexPrecedence {
    associativity: left
}

infix operator =~ : RegexPrecedence

public func =~ (string: String, regex: String) -> Bool {
    let regex = try? NSRegularExpression(pattern: regex, options: [])
    let range = NSRange(location: 0, length: string.characters.count)
    let matches = regex?.matches(in: string, options: [], range: range)
    let notEmpty: ([NSTextCheckingResult]) -> Bool = R.isEmpty >>> R.not
    return matches != nil && notEmpty(matches!)
}

extension R {

    /**

        Determines whether a given string matches a given regular expression.

        - parameter regex: The regular expression.
        - parameter string: The string to check against.

        - returns: True if string matches the regular expression, false
        otherwise.

    */

    public class func test(_ regex: String, string: String) -> Bool {
        return string =~ regex
    }

    /**

        Determines whether a given string matches a given regular expression.

        - parameter regex: The regular expression.

        - returns: A curried function that accepts the string and returns true
        if string matches the regular expression, false otherwise.

    */

    public class func test(_ regex: String) -> (_ string: String) -> Bool {
        return curry(test)(regex)
    }

}
