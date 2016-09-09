//
// Created by Justin Guedes on 2016/09/08.
//

import Foundation

// swiftlint:disable valid_docs

infix operator <<< { associativity left }
infix operator >>> { associativity left }

/**

    Composes two functions together to produce a function that takes the 'lhs'
    input and return the 'rhs' output. Executes the functions from right-to-left

    - parameter lhs: Function that takes an input 'B' and produces 'C'.
    - parameter rhs: Function that takes an input 'A' and produces 'B'.

    - returns: Function that takes 'A' and produces 'C'.

*/

public func <<< <A, B, C>(lhs: B -> C, rhs: A -> B) -> A -> C {
    return { param in
        return lhs(rhs(param))
    }
}

/**

    Composes two functions together to produce a function that takes the 'lhs'
    input and return the 'rhs' output. Executes the function from left-to-right

    - parameter lhs: Function that takes an input 'A' and produces 'B'.
    - parameter rhs: Function that takes an input 'B' and produces 'C'.

    - returns: Function that takes 'A' and produces 'C'.

*/

public func >>> <A, B, C>(lhs: A -> B, rhs: B -> C) -> A -> C {
    return { param in
        return rhs(lhs(param))
    }
}

extension R {

    /**

        Composes two functions together to produce a function that takes the 'lhs'
        input and return the 'rhs' output. Executes the function from right-to-left

        - parameter first: Function that takes an input 'B' and produces 'C'.
        - parameter second: Function that takes an input 'A' and produces 'B'.

        - returns: Function that takes 'A' and produces 'C'.

    */

    public class func compose<A, B, C>(first: B -> C, second: A -> B) -> A -> C {
        return first <<< second
    }

    /**

        Composes two functions together to produce a function that takes the 'lhs'
        input and return the 'rhs' output. Executes the function from right-to-left

        - parameter first: Function that takes an input 'C' and produces 'D'.
        - parameter second: Function that takes an input 'B' and produces 'C'.
        - parameter third: Function that takes an input 'A' and produces 'B'.

        - returns: Function that takes 'A' and produces 'C'.

    */

    public class func compose<A, B, C, D>(first: C -> D, second: B -> C, third: A -> B) -> A -> D {
        return first <<< second <<< third
    }

}

// swiftlint:enable valid_docs
