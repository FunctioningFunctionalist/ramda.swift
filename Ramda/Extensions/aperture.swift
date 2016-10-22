//
// Created by TYRONE AVNIT on 10/22/16.
//

import Foundation

extension R {

    /**

     Returns a new list, composed of n-tuples of consecutive elements If `n` is
     greater than the length of the list, an empty list is returned.

     - parameter size: The size of the tuples to create
     - parameter array: The list to split into `n`-tuples

     - returns: new list

     */

    public class func aperture<A>(_ size: Int, array: [A]) -> [Array<A>] {
        let limit = array.count - (size - 1)
        var acc = [Array<A>]()

        for idx in stride(from: 0, to: limit, by: 1) {
            let includeUntil = idx + size
            let arraySlice = array[idx..<includeUntil]
            acc.append(Array(arraySlice))
        }

        return acc
    }

    /**

     Returns a new list, composed of n-tuples of consecutive elements If `n` is
     greater than the length of the list, an empty list is returned.

     - parameter size: The size of the tuples to create

     - returns: A curried function that accepts the second condition to produce
     the result

     */

    public class func aperture<A>(_ include: Int) -> (_ array: [A]) -> [Array<A>] {
        return curry(aperture)(include)
    }

}
