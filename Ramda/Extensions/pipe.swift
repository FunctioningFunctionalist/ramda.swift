//
//  pipe.swift
//  Pods
//
//  Created by TYRONE AVNIT on 2016/10/05.
//
//

import Foundation

infix operator |>   { associativity left }
infix operator |>!  { associativity left }
infix operator |>?  { associativity left }

/**
 
 Performs left-to-right function composition. The leftmost function may have any arity; 
 the remaining functions must be unary.
 
 - parameter lhs: An input 'T'.
 - parameter rhs: Function that takes an input 'T' and produces 'U'.
 
 - returns: The value U.
 
 */

public func |> <T,U>(lhs: T, rhs: T -> U) -> U {
    return rhs(lhs)
}

/**
 
 Unwrap the optional value on the left-hand side and apply the right-hand function.
 Performs left-to-right function composition. The leftmost function may have any arity; 
 the remaining functions must be unary.
 
 - parameter lhs: An input 'T'.
 - parameter rhs: Function that takes an input 'T' and produces 'U'.
 
 - returns: The value U.
 
 */

public func |>! <T,U>(lhs: T?, rhs: T -> U) -> U {
    return rhs(lhs!)
}

/**
 
 If Optional value on left is nil, return nil; otherwise unwrap it and
 apply the right-hand function to it. Performs left-to-right function composition.
 The leftmost function may have any arity; the remaining functions must be unary.
 
 - parameter lhs: An input 'T?'.
 - parameter rhs: Function that takes an input 'T' and produces 'U?'.
 
 - returns: The value U.
 
 */

public func |>? <T,U>(lhs: T?, rhs: T -> U) -> U? {
    return lhs.map(rhs)
}

extension R {
    
    /**
     
     Performs left-to-right function composition. The leftmost function may have any arity;
     the remaining functions must be unary.
     
     - parameter first: Function that takes 'A' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     
     - returns: A function that takes 'A' and produces 'C'.
     
     */
    
    public class func pipe<A, B, C>(first: A -> B, second: B -> C) -> A -> C {
        return { param in
            first(param) |> second
        }
    }
    
    /**
     
     Unwrap the optional value on the left-hand side and apply the right-hand function.
     Performs left-to-right function composition. The leftmost function may have any arity;
     the remaining functions must be unary.
     
     - parameter first: Function that takes 'A?' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     
     - returns: A function that takes 'A' and produces 'C'.
     
     */
    
    public class func pipe<A, B, C>(first: A? -> B, second: B -> C) -> A -> C {
        return { param in
            first(param) |>! second
        }
    }
    
    /**
     
     If Optional value on left is nil, return nil; otherwise unwrap it and
     apply the right-hand function to it. Performs left-to-right function composition.
     The leftmost function may have any arity; the remaining functions must be unary.
     
     - parameter first: Function that takes 'A?' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     
     - returns: A function that takes 'A' and produces 'C'.
     
     */
    
    public class func pipe<A, B, C>(first: A? -> B, second: B -> C) -> A -> C? {
        return { param in
            first(param) |>? second
        }
    }
    
    /**
     
     Performs left-to-right function composition. The leftmost function may have any arity;
     the remaining functions must be unary.
     
     - parameter first: Function that takes 'A' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     - parameter third: Function that takes 'C' and produces 'D'.
     
     - returns: A function that takes 'A' and produces 'D'.
     
     */
    
    public class func pipe<A, B, C, D>(first: A -> B, second: B -> C, third: C -> D) -> A -> D {
        return { param in
            first(param) |> second |> third
        }
    }
    
    /**
     
     Unwrap the optional value on the left-hand side and apply the right-hand function.
     Performs left-to-right function composition. The leftmost function may have any arity;
     the remaining functions must be unary.
     
     - parameter first: Function that takes 'A?' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     - parameter third: Function that takes 'C' and produces 'D'.
     
     - returns: A function that takes 'A' and produces 'D'.
     
     */
    
    public class func pipe<A, B, C, D>(first: A? -> B, second: B -> C, third: C -> D) -> A -> D {
        return { param in
            first(param) |>! second |> third
        }
    }
    
    /**
     
     If Optional value on left is nil, return nil; otherwise unwrap it and
     apply the right-hand function to it. Performs left-to-right function composition.
     The leftmost function may have any arity; the remaining functions must be unary.
     
     - parameter first: Function that takes 'A?' and returns 'B'.
     - parameter second: Function that takes 'B' and produces 'C'.
     - parameter third: Function that takes 'C' and produces 'D?'.
     
     - returns: A function that takes 'A' and produces 'D?'.
     
     */
    
    public class func pipe<A, B, C, D>(first: A? -> B, second: B -> C, third: C -> D) -> A -> D? {
        return { param in
            first(param) |>? second |>? third
        }
    }

}