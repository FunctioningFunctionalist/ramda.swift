//
// Created by Justin Guedes on 2016/09/09.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(function: (A) -> B, with first: A) -> () -> B {
        return {
            return function(first)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(function: (A) -> B) -> (first: A) -> () -> B {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(function: (A, B) -> C, with first: A, and second: B) -> () -> C {
        return {
            return function(first, second)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(function: (A, B) -> C) -> (with: A) -> (and: B) -> () -> C {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.
        - parameter third: Third parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(function: (A, B, C) -> D, with first: A, _ second: B, and third: C) -> () -> D {
        return {
            return function(first, second, third)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(function: (A, B, C) -> D) -> (with: A) -> (B) -> (and: C) -> () -> D {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.
        - parameter third: Third parameter for the function.
        - parameter fourth: Third parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D, E>(function: (A, B, C, D) -> E, with first: A, _ second: B, _ third: C, and fourth: D) -> () -> E {
        return {
            return function(first, second, third, fourth)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D, E>(function: (A, B, C, D) -> E) -> (with: A) -> (B) -> (C) -> (and: D) -> () -> E {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: The parameters for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(function: (A...) -> B, with first: A...) -> () -> B {
        return {
            typealias ArrayFunction = [A] -> B
            let newFunc = unsafeBitCast(function, ArrayFunction.self)
            return newFunc(first)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(function: (A...) -> B) -> (with: A...) -> () -> B {
        return curry(bind)(function)
    }

}

// swiftlint:enable line_length
