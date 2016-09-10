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

    public class func bind<A, B>(function: (A) -> B, first: A) -> () -> B {
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
        return { first in
            return bind(function, first: first)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(function: (A, B) -> C, first: A, second: B) -> () -> C {
        return {
            return function(first, second)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(function: (A, B) -> C) -> (first: A, second: B) -> () -> C {
        return { first, second in
            return bind(function, first: first, second: second)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C>(function: (A, B) -> C) -> (first: A) -> (second: B) -> () -> C {
        return { first in
            return { second in
                return bind(function, first: first, second: second)
            }
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: First parameter for the function.
        - parameter second: Second parameter for the function.
        - parameter third: Third parameter for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(function: (A, B, C) -> D, first: A, second: B, third: C) -> () -> D {
        return {
            return function(first, second, third)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(function: (A, B, C) -> D) -> (first: A, second: B, third: C) -> () -> D {
        return { first, second, third in
            return bind(function, first: first, second: second, third: third)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D>(function: (A, B, C) -> D) -> (first: A) -> (second: B) -> (third: C) -> () -> D {
        return { first in
            return { second in
                return { third in
                    return bind(function, first: first, second: second, third: third)
                }
            }
        }
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

    public class func bind<A, B, C, D, E>(function: (A, B, C, D) -> E, first: A, second: B, third: C, fourth: D) -> () -> E {
        return {
            return function(first, second, third, fourth)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D, E>(function: (A, B, C, D) -> E) -> (first: A, second: B, third: C, fourth: D) -> () -> E {
        return { first, second, third, fourth in
            return bind(function, first: first, second: second, third: third, fourth: fourth)
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B, C, D, E>(function: (A, B, C, D) -> E) -> (first: A) -> (second: B) -> (third: C) -> (fourth: D) -> () -> E {
        return { first in
            return { second in
                return { third in
                    return { fourth in
                        return bind(function, first: first, second: second, third: third, fourth: fourth)
                    }
                }
            }
        }
    }

    /**
        Creates a function that is bound to the specified function with supplied parameters.

        - parameter function: The function to bind.
        - parameter first: The parameters for the function.

        - returns: The function that executes the bound function with the parameters.

    */

    public class func bind<A, B>(function: (A...) -> B, first: A...) -> () -> B {
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

    public class func bind<A, B>(function: (A...) -> B) -> (first: A...) -> () -> B {
        return { first in
            return {
                typealias ArrayFunction = [A] -> B
                let newFunc = unsafeBitCast(function, ArrayFunction.self)
                return newFunc(first)
            }
        }
    }

}

// swiftlint:enable line_length
