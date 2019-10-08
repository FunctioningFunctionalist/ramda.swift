//
//  empty.swift
//  Ramda
//
//  Created by Christian Leovido on 27/09/2019.
//

import Foundation

public protocol EmptyDefinable {

    associatedtype CollectionType: Collection

    mutating func emptyCollection() -> CollectionType
}

extension R {

    /**

     Returns the empty value of its argument's type.

     - parameter value: must conform to the EmptyDefinable protocol

     - returns: an empty collection type (Array, Dictionary, Set, String)

     */

    public class func empty<T: EmptyDefinable>(value: T) -> T? {
        var incomingEmptyDefinable = value

        return incomingEmptyDefinable.emptyCollection() as? T
    }

}

extension Array: EmptyDefinable {

    public typealias CollectionType = [Any]
    public typealias SubCollectionType = CollectionType.SubSequence

    mutating public func emptyCollection() -> CollectionType {
        self.removeAll()

        return self
    }

}

extension Dictionary: EmptyDefinable {

    public typealias CollectionType = [AnyHashable: Any]
    public typealias SubCollectionType = CollectionType.SubSequence

    mutating public func emptyCollection() -> CollectionType {
        self.removeAll()

        return self
    }
}

extension String: EmptyDefinable {

    public typealias CollectionType = String
    public typealias SubCollectionType = CollectionType.SubSequence

    mutating public func emptyCollection() -> CollectionType {
        self.removeAll()

        return self
    }
}

extension Set: EmptyDefinable {

    public typealias CollectionType = Set<AnyHashable>
    public typealias SubCollectionType = CollectionType.SubSequence

    mutating public func emptyCollection() -> CollectionType {
        self.removeAll()

        return self
    }
}
