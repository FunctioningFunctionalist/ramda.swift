//
// Created by Justin Guedes on 2016/09/22.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Takes a function and a functor, applies the function to each
        of the functor's values, and returns a functor of the same shape.

        - parameter function: Function to map elements.
        - parameter functor: The functor to transform.

        - returns: Functor of the same shape.

    */

    public class func map<A, B: SequenceType, C where A == B.Generator.Element>(function: A -> C, with functor: B) -> [C] {
        return functor.map { element in
            function(element)
        }
    }

    /**

        Takes a function and a functor, applies the function to each
        of the functor's values, and returns a functor of the same shape.

        - parameter function: Function to map elements.

        - returns: A curried function that accepts the functor and returns a
        new functor of the same shape.

    */

    public class func map<A, B: SequenceType, C where A == B.Generator.Element>(function: A -> C) -> (with: B) -> [C] {
        return curry(map)(function)
    }

}

// swiftlint:enable line_length
