//
// Created by Justin Guedes on 2016/09/11.
//

import Foundation

extension R {

    /**

        Decrements the value.

        - parameter number: Number to decrement.

        - returns: The decremented number.

    */

    public class func dec<T: Decrementable>(_ number: T) -> T {
        return number.decrement()
    }

}

/**

 Protocol for types that support decrementing.

*/

public protocol Decrementable {

    /**

        Decrements current value.

        - returns: The decremented value.

    */

    func decrement() -> Self

}

extension Int: Decrementable {

    public func decrement() -> Int {
        return self - 1
    }

}

extension Int8: Decrementable {

    public func decrement() -> Int8 {
        return self - 1
    }

}

extension Int16: Decrementable {

    public func decrement() -> Int16 {
        return self - 1
    }

}

extension Int32: Decrementable {

    public func decrement() -> Int32 {
        return self - 1
    }

}

extension Int64: Decrementable {

    public func decrement() -> Int64 {
        return self - 1
    }

}

extension UInt: Decrementable {

    public func decrement() -> UInt {
        return self - 1
    }

}

extension UInt8: Decrementable {

    public func decrement() -> UInt8 {
        return self - 1
    }

}

extension UInt16: Decrementable {

    public func decrement() -> UInt16 {
        return self - 1
    }

}

extension UInt32: Decrementable {

    public func decrement() -> UInt32 {
        return self - 1
    }

}

extension UInt64: Decrementable {

    public func decrement() -> UInt64 {
        return self - 1
    }

}

extension Float: Decrementable {

    public func decrement() -> Float {
        return self - 1
    }

}

extension Double: Decrementable {

    public func decrement() -> Double {
        return self - 1
    }

}
