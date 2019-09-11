//
//  append.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/04.
//

import Foundation

extension R {

    /**

     Returns a new list containing the contents of the given list, followed by the given element.

     - parameter element: The element to add to the end of the new list.
     - parameter list: The list of elements to add a new item to.

     - returns: A new list containing the elements of the old list followed by `el`.

     */

    public class func append<A>(_ element: [A], _ list: [A]) -> [A] {
        return list + element
    }

    /**

     Returns a new list containing the contents of the given list, followed by the given element.

     - parameter element: The element to add to the end of the new list.

     - returns: A curried function.

     */

    public class func append<A>(_ element: [A]) -> (_ list: [A]) -> [A] {
        return curry(append)(element)
    }

}
