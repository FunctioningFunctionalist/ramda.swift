//
// Created by Justin Guedes on 2016/09/16.
//

import Foundation

extension R {

    /**

        Returns the empty value of its argument.

        - parameter value: Value to produce empty value from.

        - returns: The empty value of the value type.

    */

    public class func empty<T: EmptyType>(_ value: T) -> T {
        return value.empty()
    }

}

/**

 Protocol for types that support empty types.

*/

public protocol EmptyType {

    /**

        Returns empty type of struct, class or enum.

        - returns: Empty type.

    */

    func empty() -> Self

}

extension Array: EmptyType {

    public func empty() -> Array<Element> {
        return Array()
    }

}

extension Set: EmptyType {

    public func empty() -> Set<Element> {
        return Set()
    }

}

extension Dictionary: EmptyType {

    public func empty() -> Dictionary<Key, Value> {
        return Dictionary()
    }

}

extension String: EmptyType {

    public func empty() -> String {
        return String()
    }

}
