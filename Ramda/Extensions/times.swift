//
// Created by Justin Guedes on 2016/09/23.
//

import Foundation

extension R {

    /**

        Calls function 'count' number of times passing in number starting
        from zero to 'count'.

        - parameter function: Function to create element.
        - parameter count: Number of times to execute function.

        - returns: Array of elements produced from function.

    */

    public class func times<T>(_ function: (Int) -> T, for count: Int) -> [T] {
        let composition = R.range(0) >>> R.map(function)
        return composition(count)
    }

    /**

        Calls function 'count' number of times passing in number starting
        from zero to 'count'.

        - parameter function: Function to create element.

        - returns: A curried function that accepts the count and returns
        an array of elements produced from function.

    */

    public class func times<T>(_ function: (Int) -> T) -> (_ for: Int) -> [T] {
        return curry(times)(function)
    }

}
