//
// Created by Justin Guedes on 2016/11/07.
//

import Foundation

// swiftlint:disable line_length

extension R {


    /// Returns the index of the first element of the list which matches the predicate,
    /// or nil if no element matches.
    ///
    /// - Parameters:
    ///   - predicate: Function that determines whether the element matches.
    ///   - collection: Collection to search for the index.
    /// - Returns: Index of the first element if found, else nil if no match.
    public class func findIndex<T: Collection>(_ predicate: (T.Iterator.Element) -> Bool, in collection: T) -> T.Index? {
        return collection.index(where: predicate)
    }


    /// Returns the index of the first element of the list which matches the predicate,
    /// or nil if no element matches.
    ///
    /// - Parameter predicate: Function that determines whether the element matches.
    /// - Returns: A curried function that accepts the collection and returns an index
    /// of the first element if found, else nil if no match.
    public class func findIndex<T: Collection>(_ predicate: (T.Iterator.Element) -> Bool) -> (T) -> T.Index? {
        return curry(findIndex)(predicate)
    }

}

// swiftlint:enable line_length
