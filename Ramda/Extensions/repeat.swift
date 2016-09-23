//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Returns a fixed size of repeated elements.

        - parameter element: Element to repeat.
        - parameter count: Number of times to repeat the element.

        - returns: Array of repeated elements.

    */

    public class func _repeat<T>(element: T, times count: Int) -> [T] {
        return Array(count: count, repeatedValue: element)
    }

    /**

        Returns a fixed size of repeated elements.

        - parameter element: Element to repeat.

        - returns: A curried function that accepts a count and returns
        an array of repeated elements.

    */

    public class func _repeat<T>(element: T) -> (times: Int) -> [T] {
        return curry(_repeat)(element)
    }

}
