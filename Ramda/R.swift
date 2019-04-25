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
     
     - returns: Curried function
     
     */

    public class func add<T: BasicArithmeticType>(_ lhs: T) -> (_ to: T) -> T {
        return curry(add)(lhs)
    }

    /**
     
     Creates a new list iteration function from an existing one by
     adding two new parameters to its callback function: the current index, and the entire list.
     
     - parameter function: A list iteration function that does not pass index or list to its callback
     - parameter list: The list to be iterated over.
     
     - returns: The new list
     
     */

    public class func addIndex<A, B>(_ function: (Int, A) -> B, _ list: [A]) -> [B] {
        return list.enumerated().map(function)
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
     
     Applies a function to the value at the given index of an array, returning a
     new copy of the array with the element at the given index replaced with the
     result of the function application.
     
     - parameter function: The function to be called on every element of the input `list`.
     - parameter index: The index of where the function will be applied
     - parameter list: The list to be iterated over.
     
     - returns: The new list.
     
     */

    public class func adjust<A>(_ function: (A) -> A, _ index: Int, _ list: [A]) -> [A] {
        return list.enumerated().reduce([], { (result, nextValue) in
            return result + (nextValue.offset == index ? [function(nextValue.element)] : [nextValue.element])
        })
    }

    /**
     
     Applies a function to the value at the given index of an array, returning a
     new copy of the array with the element at the given index replaced with the
     result of the function application.
     
     - parameter function: The function to be called on every element of the input `list`.
     
     - returns: Curried function
     
     */

    public class func adjust<A>(_ function: @escaping (A) -> A) -> (Int) -> ([A]) -> [A] {
        return curry(adjust)(function)
    }
    
    /**
     
     Returns true if all elements of the list match the predicate, false if there are any that don't.
     
     - parameter function: The function to be called on every element of the input `list`.
     - parameter list: The list to be iterated over.
     
     - returns: Bool
     
     */
    
    public class func all<T>(_ function: (T) -> Bool, _ list: [T]) -> Bool {
        return list.allSatisfy(function)
    }

    /**

     Returns true if all elements of the list match the predicate, false if there are any that don't.

     - parameter function: The function to be called on every element of the input `list`.

     - returns: Curried function

     */

    public class func all<T>(_ function: @escaping (T) -> Bool) -> ([T]) -> Bool {
        return curry(all)(function)
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Bool

     */

    public class func allPassK<T>(_ predicates: [(T) -> Bool], _ list: [T]) -> Bool {
        let fn = apply(predicates.compactMap(R.all))
        return fn(list).filter(not).count == 0
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Curried function

     */

    public class func allPassK<T>(_ predicates: [(T) -> Bool]) -> ([T]) -> Bool {
        return curry(allPassK)(predicates)
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Bool

     */

    public class func allPass<T>(_ predicates: [(T) -> Bool], _ arg: T) -> Bool {
        let fn = apply(predicates)
        return fn(arg).filter(not).count == 0
    }

    /**

     Takes a list of predicates and returns a predicate that returns true for a given list of
     arguments if every one of the provided predicates is satisfied by those arguments.

     - parameter predicates: An array of predicates to check

     - returns: Curried function

     */

    public class func allPass<T>(_ predicates: [(T) -> Bool]) -> (T) -> Bool {
        return curry(allPass)(predicates)
    }

    /**

     Applies function fn to the argument list args

     - parameter function: The function that the arg will be applied to
     - parameter argument: The function that the arg will be applied to

     - returns: The result of the function

     */

    public class func apply<A, B>(_ function: @escaping (A) -> B, argument: A) -> B {
        return function(argument)
    }

    /**

     Applies function fn to the argument list args

     - parameter function: The function that the arg will be applied to

     - returns: The result of the function

     */

    public class func apply<A, B>(_ function: @escaping (A) -> B) -> (A) -> B {
        return curry(apply)(function)
    }

    /**

     Applies the argument to a list of functions

     - parameter functions: The array of functions that will be executed with the provided argument
     - parameter argument: The function that the arg will be applied to

     - returns: A new list

     */

    public class func apply<A, B>(_ functions: [(A) -> B], _ argument: A) -> [B] {
        return functions.map { function in function(argument) }
    }

    /**

     Applies the argument to a list of functions

     - parameter functions: The list of functions that will be executed with the provided argument

     - returns: A curried function

     */

    public class func apply<A, B>(_ functions: [(A) -> B]) -> (A) -> [B] {
        return curry(apply)(functions)
    }

    /**

     Returns true if the specified object property is equal, in R.equals terms, to the given value; false otherwise.

     - parameter boolean: The Bool value

     - returns: Bool

     */

    public class func propEq<T: Equatable, E>(_ property: (String, T), _ object: E) -> Bool {
        let (pLabel, pValue) = property
        let child = Mirror(reflecting: object).children.first { child in
            guard let value = child.value as? T else { return false }
            return equals(child.label, pLabel) && equals(value, pValue)
        }

        return isSome(child)
    }

    /**

     Returns true if the specified object property is equal, in R.equals terms, to the given value; false otherwise.

     - parameter boolean: The Bool value

     - returns: A curried function

     */

    public class func propEq<T: Equatable, E>(_ property: (String, T)) -> (E) -> Bool {
        return curry(propEq)(property)
    }


    /**

     A function that returns the ! of its argument. It will return true when passed
     false-y value, and false when passed a truth-y one.

     - parameter boolean: The Bool value

     - returns: Bool

     */

    public class func not(_ boolean: Bool) -> Bool {
        return !boolean
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

    /**

     Determines if an optional does not contain a value

     - parameter optional: An optional

     - returns: Bool

     */

    public class func isNone<A>(_ optional: A?) -> Bool {
        return not(isSome(optional))
    }

    /**

     Determines if an optional contains a value

     - parameter optional: An optional

     - returns: Bool

     */

    public class func isSome<A>(_ optional: A?) -> Bool {
        return optional != nil
    }

}

// swiftlint:enable type_name
