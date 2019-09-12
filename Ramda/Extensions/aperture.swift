//
//  aperture.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Returns a new list, composed of n-tuples of consecutive elements.
     If n is greater than the length of the list, the list is returned.

     - parameter split: The size of the tuples to create
     the accumulator and the current element from the array.
     - parameter list: The list to split into `split`-length tuples

     - returns: The resulting list of `n`-length tuples

     */

    public class func aperture<A>(_ split: Int, _ list: [A]) -> [[A]] {
        guard list.count > split, split != 0 else {
            return [list]
        }

        return [Array(list[0..<split])] + aperture(split, Array(list[split..<list.count]))
    }

    /**

     Returns a new list, composed of n-tuples of consecutive elements.
     If n is greater than the length of the list, the list is returned.

     - parameter split: The size of the tuples to create
     the accumulator and the current element from the array.

     - returns: A curried function

     */

    public class func aperture<A>(_ split: Int) -> (_ list: [A]) -> [[A]] {
        return curry(aperture)(split)
    }

}
