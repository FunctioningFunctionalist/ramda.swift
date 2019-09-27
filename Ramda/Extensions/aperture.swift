//
//  aperture.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Returns a new list, composed of n-tuples of consecutive elements.
     If n is greater than the length of the list, an empty list is returned.

     Acts as a transducer if a transformer is given in list position.
     See also transduce

     - parameter value: must conform to the EmptyDefinable protocol

     - returns: an empty collection type (Array, Dictionary, Set, String)

     */

    public class func aperture(_ number: Int, _ value: [Int]) -> [[Int]] {

        if number < value.count {
            var group: [[Int]] = []

            for index in 0..<value.count where (number + index) <= value.count {
                let grouped = value[index..<number + index]
                group.append(Array(grouped))
            }

            return group

        } else {
            return []
        }

    }

}
