//
//  reduce.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Returns a single item by iterating through the list, successively calling the iterator function
     and passing it an accumulator value and the current value from the array,
     and then passing the result to the next call.

     - parameter function: The iterator function. Receives two values,
                    the accumulator and the current element from the array.
     - parameter initial: The initial value
     - parameter list: The list to iterate over.

     - returns: The final, accumulated value

     */

    public class func reduce<A, B>(_ function: (B, A) -> B, _ initial: B, _ list: [A]) -> B {
        return list.reduce(initial, function)
    }

    /**

     Returns a single item by iterating through the list, successively calling the iterator function
     and passing it an accumulator value and the current value from the array,
     and then passing the result to the next call.

     - parameter function: The iterator function. Receives two values,
                    the accumulator and the current element from the array.

     - returns: A curried function

     */

    public class func reduce<A, B>(_ function: @escaping (B, A) -> B) -> (_ initial: B) -> (_ list: [A]) -> B {
        return curry(reduce)(function)
    }

}
