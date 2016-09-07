//
//  add.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/05.
//
//

import Foundation

extension R {

    /**

     Adds two values.
     
     - returns: A partial function that accepts another value to produce the result.

    */
 
    public class func add<T: AdditionArithmeticType>(x: T) -> (y: T) -> T {
        return { y in
            return x + y
        }
    }

    /**

     Adds two values.

     - returns: The sum of the two values.

    */

    public class func add<T: AdditionArithmeticType>(x: T, y: T) -> T {
        return add(x)(y: y)
    }
    
}

/**

 Protocol for types that support addition arithmetic

*/

public protocol AdditionArithmeticType {

    /**

     Adds "lhs" and "rhs", returning a result of same type

    */

    func +(lhs: Self, rhs: Self) -> Self

}

extension Int : AdditionArithmeticType {}
extension Int8 : AdditionArithmeticType {}
extension Int16 : AdditionArithmeticType {}
extension Int32 : AdditionArithmeticType {}
extension Int64 : AdditionArithmeticType {}
extension UInt : AdditionArithmeticType {}
extension UInt8 : AdditionArithmeticType {}
extension UInt16 : AdditionArithmeticType {}
extension UInt32 : AdditionArithmeticType {}
extension UInt64 : AdditionArithmeticType {}
extension Float : AdditionArithmeticType {}
extension Double : AdditionArithmeticType {}
extension String : AdditionArithmeticType {}