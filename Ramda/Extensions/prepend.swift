//
//  append.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Returns a new list with the given element at the front, followed by the contents of the list.

     - parameter element: The element to add to the start of the new list.
     - parameter list: The list of elements to add a new item to.

     - returns: A new list containing the elements of the old list followed by `el`.

     */

    public class func prepend<A>(_ element: [A], _ list: [A]) -> [A] {
        return element + list
    }

    /**

     Returns a new list with the given element at the front, followed by the contents of the list.

     - parameter element: The element to add to the start of the new list.

     - returns: A curried function.

     */

    public class func prepend<A>(_ element: [A]) -> (_ list: [A]) -> [A] {
        return curry(append)(element)
    }

}
