//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

// swiftlint:disable line_length
// swiftlint:disable valid_docs

extension R {

    /**

        Creates a function that will process either the 'trueFunction' or
        'falseFunction' depending on the result of the 'conditionFunction'.

        - parameter conditionFunction: The condition function.
        - parameter trueFunction: Function to execute when the condition is true.
        - parameter falseFunction: Function to execute when the condition is false.

        - returns: A function that executes either the 'trueFunction' or 'falseFunction'
        depending on the result of the 'conditionFunction'.

    */

    public class func ifElse<A, B>(_ conditionFunction: @escaping (A) -> Bool, then trueFunction: @escaping (A) -> B, else falseFunction: @escaping (A) -> B) -> (A) -> B {
        return { parameter in
            if conditionFunction(parameter) {
                return trueFunction(parameter)
            }

            return falseFunction(parameter)
        }
    }

    /**

        Creates a function that will process either the 'trueFunction' or
        'falseFunction' depending on the result of the 'conditionFunction'.

        - parameter conditionFunction: The condition function.

        - returns: A curried function that accepts the true and false functions and
        returns a function that executes either the 'trueFunction' or 'falseFunction'
        depending on the result of the 'conditionFunction'.

    */

    public class func ifElse<A, B>(_ conditionFunction: @escaping (A) -> Bool) -> (_ then: @escaping (A) -> B) -> (_ else: @escaping (A) -> B) -> (A) -> B {
        return curry(ifElse)(conditionFunction)
    }

}

// swiftlint:enable valid_docs
// swiftlint:enable line_length
