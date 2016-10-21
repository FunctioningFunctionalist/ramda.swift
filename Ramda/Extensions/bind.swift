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

        - returns: The function that executes the bound function with the parameter.

    */

    public class func bind<A, B>(_ function: @escaping (A) -> B, with first: A) -> () -> B {
        return {
            return function(first)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: A curried function that accepts the first parameter and returns the function
        that executes the bound function with the parameter.

    */

    public class func bind<A, B>(_ function: @escaping (A) -> B) -> (_ with: A) -> () -> B {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(_ function: @escaping (A, B) -> C, with first: A, and second: B) -> () -> C {
        return {
            return function(first, second)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: A curried function that accepts the first and second parameter and returns
        the function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(_ function: @escaping (A, B) -> C) -> (_ with: A) -> (_ and: B) -> () -> C {
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

    public class func bind<A, B, C, D>(_ function: @escaping (A, B, C) -> D, with first: A, _ second: B, and third: C) -> () -> D {
        return {
            return function(first, second, third)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: A curried function that accepts the first, second and third parameters and returns
        the function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(_ function: @escaping (A, B, C) -> D) -> (_ with: A) -> (B) -> (_ and: C) -> () -> D {
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

    public class func bind<A, B, C, D, E>(_ function: @escaping (A, B, C, D) -> E, with first: A, _ second: B, _ third: C, and fourth: D) -> () -> E {
        return {
            return function(first, second, third, fourth)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: A curried function that accepts the first, second, third and fourth parameters and returns
        the function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D, E>(_ function: @escaping (A, B, C, D) -> E) -> (_ with: A) -> (B) -> (C) -> (_ and: D) -> () -> E {
        return curry(bind)(function)
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: The parameters for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(_ function: @escaping (A...) -> B, with first: A...) -> () -> B {
        return {
            typealias ArrayFunction = ([A]) -> B
            let newFunc = unsafeBitCast(function, to: ArrayFunction.self)
            return newFunc(first)
        }
    }

    /**

        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: A curried function that accepts the vararg parameter and returns
        the function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(_ function: @escaping (A...) -> B) -> (_ with: A...) -> () -> B {
        return curry(bind)(function)
    }

}

// swiftlint:enable line_length
