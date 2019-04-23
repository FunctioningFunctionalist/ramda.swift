//
// Created by TYRONE AVNIT on 2016/09/05.
//

import Foundation

// swiftlint:disable type_name

open class R {

    /**
     
     Adds two values.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: The sum of the two values.
     
     */

    public class func add<T: BasicArithmeticType>(_ lhs: T, to rhs: T) -> T {
        return lhs + rhs
    }

    /**
     
     Adds two values.
     
     - parameter lhs: The left hand side operand.
     
     - returns: A curried function that accepts another value to produce the result.
     
     */

    public class func add<T: BasicArithmeticType>(_ lhs: T) -> (_ to: T) -> T {
        return curry(add)(lhs)
    }

    /**
     
     Creates a new list iteration function from an existing one by
     adding two new parameters to its callback function: the current index, and the entire list.
     
     - parameter function: A list iteration function that does not pass index or list to its callback
     - parameter functor: The list to be iterated over.
     
     - returns: The new list
     
     */

    public class func addIndex<A, B>(_ function: (Int, A) -> B, _ functor: [A]) -> [B] {
        return functor.enumerated().map(function)
    }

    /**
     
     Creates a new list iteration function from an existing one by
     adding two new parameters to its callback function: the current index, and the entire list.
     
     - parameter function: A list iteration function that does not pass index or list to its callback
     
     - returns: Curried function
     
     */

    public class func addIndex<A, B>(_ function: @escaping (Int, A) -> B) -> (_ functor: [A]) -> [B] {
        return curry(addIndex)(function)
    }

    /**
     
     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.
     
     - parameter function: The function to be called on every element of the input `list`.
     - parameter functor: The list to be iterated over.
     
     - returns: The new list.
     
     */

    public class func adjust<A>(_ function: (A) -> A, _ index: Int, _ list: [A]) -> [A] {
        return list.enumerated().reduce([], { (result, nextValue) in
            return result + (nextValue.offset == index ? [function(nextValue.element)] : [nextValue.element])
        })
    }

    /**
     
     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.
     
     - parameter function: The function to be called on every element of the input `list`.
     
     - returns: Curried function
     
     */

    public class func adjust<A>(_ function: @escaping (A) -> A) -> (Int) -> ([A]) -> [A] {
        return curry(adjust)(function)
    }
    
    /**
     
     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.
     
     - parameter function: The function to be called on every element of the input `list`.
     - parameter functor: The list to be iterated over.
     
     - returns: The new list.
     
     */
    
    public class func all<T>(_ function: (T) -> Bool, _ list: [T]) -> Bool {
        return list.first
    }
    
    /**
     
     Returns `true` if its arguments are equivalent, `false` otherwise.
     
     - parameter lhs: The left hand side operand.
     - parameter rhs: The right hand side operand.
     
     - returns: Returns true if 'lhs' is equivalent to 'rhs', else false.
     
     */
    
    public class func equals<T: Equatable>(_ lhs: T, _ rhs: T) -> Bool {
        return lhs == rhs
    }
    
    /**
     
     Returns `true` if its arguments are equivalent, `false` otherwise.
     
     - parameter lhs: The left hand side operand.
     
     - returns: Curried function
     
     */
    
    public class func equals<T: Equatable>(_ lhs: T) -> (T) -> Bool {
        return curry(equals)(lhs)
    }

    /**
     
     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.
     
     - parameter function: The function to be called on every element of the input `list`.
     - parameter functor: The list to be iterated over.
     
     - returns: The new list.
     
     */

    public class func map<A, B>(_ function: (A) -> B, _ functor: [A]) -> [B] {
        return functor.map(function)
    }

    /**
     
     Takes a function and a [functor](https://github.com/fantasyland/fantasy-land#functor),
     applies the function to each of the functor's values, and returns
     a functor of the same shape.
     
     - parameter function: The function to be called on every element of the input `list`.
     
     - returns: a curried function.
     
     */

    public class func map<A, B>(_ function: @escaping (A) -> B) -> (_ with: [A]) -> [B] {
        return curry(map)(function)
    }

}

// swiftlint:enable type_name
