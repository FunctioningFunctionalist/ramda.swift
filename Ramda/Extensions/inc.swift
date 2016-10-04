//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        Increments the value.

        - parameter number: Number to increment.

        - returns: The incremented number.

    */

    public class func inc<T: Incrementable>(number: T) -> T {
        return number.increment()
    }

}

/**

 Protocol for types that support incrementing.

*/

public protocol Incrementable {

    /**

        Increments current value.

        - returns: The incremented value.

    */

    func increment() -> Self

}

extension Int: Incrementable {

    public func increment() -> Int {
        return self + 1
    }

}

extension Int8: Incrementable {

    public func increment() -> Int8 {
        return self + 1
    }

}

extension Int16: Incrementable {

    public func increment() -> Int16 {
        return self + 1
    }

}

extension Int32: Incrementable {

    public func increment() -> Int32 {
        return self + 1
    }

}

extension Int64: Incrementable {

    public func increment() -> Int64 {
        return self + 1
    }

}

extension UInt: Incrementable {

    public func increment() -> UInt {
        return self + 1
    }

}

extension UInt8: Incrementable {

    public func increment() -> UInt8 {
        return self + 1
    }

}

extension UInt16: Incrementable {

    public func increment() -> UInt16 {
        return self + 1
    }

}

extension UInt32: Incrementable {

    public func increment() -> UInt32 {
        return self + 1
    }

}

extension UInt64: Incrementable {

    public func increment() -> UInt64 {
        return self + 1
    }

}

extension Float: Incrementable {

    public func increment() -> Float {
        return self + 1
    }

}

extension Double: Incrementable {

    public func increment() -> Double {
        return self + 1
    }

}
