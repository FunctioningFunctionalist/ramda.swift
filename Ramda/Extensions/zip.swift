//
//  zip
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation
extension R {
    /**
     
     Creates a new list out of the two supplied by pairing up equally-positioned
     items from both lists. The returned list is truncated to the length of the
     shorter of the two input lists.
     
     - parameter array1: The first array to consider.
     - parameter array2: The second array to consider.
     
     - returns: The list made by pairing up same-indexed elements of `list1` and `list2`.
     
     */
    public class func zip<T, U>(_ array1: [T], _ array2: [U]) -> [(T, U)] {
        let len = min(array1.count, array2.count)
        return array1[0..<len].enumerated().map { (index, element) in
            return (element, array2[index])
        }
    }

    /**
     
     Creates a new list out of the two supplied by pairing up equally-positioned
     items from both lists. The returned list is truncated to the length of the
     shorter of the two input lists.
     
     - parameter array1: The first array to consider.
     - returns: Curried function
     
     */

    public class func zip<T, U>(_ array1: [T]) -> (_ array2: [U]) -> [(T, U)] {
        return curry(zip)(array1)
    }

}
