//
//  Semigroup.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2019/09/03.
//

public protocol Semigroup {
    func operation(_ element: Self) -> Self
}

extension Int: Semigroup {
    public func operation(_ element: Int) -> Int {
        return self + element
    }
}

extension Bool: Semigroup {
    public func operation(_ element: Bool) -> Bool {
        return self || element
    }
}

extension String: Semigroup {
    public func operation(_ element: String) -> String {
        return self + element
    }
}

extension Array: Semigroup {
    public func operation(_ element: Array) -> Array {
        return self + element
    }
}
