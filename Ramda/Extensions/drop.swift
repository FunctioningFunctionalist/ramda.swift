//
//  drop.swift
//  Pods-Ramda_Example
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

extension R {

    /**

     Returns all but the first n elements of the given list, string, or transducer/transformer (or object with a drop method).

     Dispatches to the drop method of the second argument, if present.

     */

    public class func drop(_ iteration: Int, _ string: String) -> String {

        var newString = string

       for _ in 0..<iteration {
            if newString.count == 0 {
                break
            } else {
                newString.removeFirst()
            }
        }

        return newString
    }

    public class func drop(_ iteration: Int, _ arrayString: [String]) -> [String] {

        var newArrayString = arrayString

        for index in 0..<iteration where arrayString.count > index {

            newArrayString.removeFirst()

        }

        return newArrayString
    }

}
