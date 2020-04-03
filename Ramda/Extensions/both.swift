//
//  both.swift
//  Ramda
//
//  Created by Christian Leovido on 03/04/2020.
//

extension R {

    /**

     A function which calls the two provided functions and returns the && of the results.

     It returns the result of the first function if it is false-y and the result of the second function otherwise.

     Note that this is short-circuited,
     meaning that the second function will not be invoked if the first returns a false-y value.

     In addition to functions, R.both also accepts any fantasy-land compatible applicative functor.

     - parameter f1: any function that returns a Bool
     - parameter f2: a function that returns a Bool

     - returns: a function that accepts the same value from the arguments

     */

    public class func both<T>(_ function1: @escaping (T) -> Bool,
                              _ function2: @escaping (T) -> Bool) -> (T) -> Bool {

        return { newValue in
            return f1(newValue) && f2(newValue)
        }

    }

}
