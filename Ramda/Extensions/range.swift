//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Returns a list of numbers from 'from' (inclusive) to 'to' (exclusive).

        - parameter from: Range to start from.
        - parameter second: Range to end at.

        - returns: List of numbers.

    */

    public class func range(_ from: Int, to second: Int) -> [Int] {
        return Array(from...R.subtract(second, minus: 1))
    }

    /**

        Returns a list of numbers from 'from' (inclusive) to 'to' (exclusive).

        - parameter from: Range to start from.

        - returns: A curried function that accepts the second number and returns
        a list of numbers.

    */

    public class func range(_ from: Int) -> (_ to: Int) -> [Int] {
        return curry(range)(from)
    }

}
