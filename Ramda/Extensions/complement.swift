//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with one parameter.

        - returns: Function with same signature that returns opposite result.

    */

    public class func complement<A>(function: (A) -> Bool) -> (A) -> Bool {
        return { parameter in
            return !function(parameter)
        }
    }

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with two parameters.

        - returns: Function with same signature that returns opposite result.

    */

    public class func complement<A, B>(function: (A, B) -> Bool) -> (A, B) -> Bool {
        return { (first, second) in
            return !function(first, second)
        }
    }

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with three parameters.

        - returns: Function with same signature that returns opposite result.

    */

    public class func complement<A, B, C>(function: (A, B, C) -> Bool) -> (A, B, C) -> Bool {
        return { (first, second, third) in
            return !function(first, second, third)
        }
    }

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with four parameters.

        - returns: Function with same signature that returns opposite result.

    */

    public class func complement<A, B, C, D>(function: (A, B, C, D) -> Bool) -> (A, B, C, D) -> Bool {
        return { (first, second, third, fourth) in
            return !function(first, second, third, fourth)
        }
    }

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with five parameter.

        - returns: Function with same signature that returns opposite results.

    */

    public class func complement<A, B, C, D, E>(function: (A, B, C, D, E) -> Bool) -> (A, B, C, D, E) -> Bool {
        return { (first, second, third, fourth, fifth) in
            return !function(first, second, third, fourth, fifth)
        }
    }

    /**

        Complements the passed in function by returning the opposite result.

        - parameter function: Function with variable number of parameters.

        - returns: Function with same signature that returns opposite result.

    */

    public class func complement<T>(function: (T...) -> Bool) -> (T...) -> Bool {
        return { (parameters: T...) in
            typealias ArrayFunction = [T] -> Bool
            let newFunc = unsafeBitCast(function, ArrayFunction.self)
            return !newFunc(parameters)
        }
    }

}

// swiftlint:enable line_length
