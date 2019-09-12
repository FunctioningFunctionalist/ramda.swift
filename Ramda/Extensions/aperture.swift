//
//  aperture.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     ap applies a list of functions to a list of values.

     - parameter functions: The list of functions to be applied
     the accumulator and the current element from the array.
     - parameter list: The list to iterate over.

     - returns: A new list with each of the functions applied to the list of values

     */

    public class func aperture<A>(_ split: Int, _ list: [A]) -> [[A]] {
        guard list.count > split, split != 0 else {
            return [list]
        }

        return [Array(list[0..<split])] + aperture(split, Array(list[split..<list.count]))
    }

}
