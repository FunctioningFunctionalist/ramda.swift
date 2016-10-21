//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

// swiftlint:disable line_length

extension R {

    /**

        Returns the mean of the collection of numbers.

        - parameter collection: The collection of numbers.

        - returns: The mean.

    */

    public class func mean<A: BasicArithmeticType, B: Collection>(_ collection: B) -> Double where A: DoubleConvertible, A == B.Iterator.Element, B.IndexDistance == Int {
        return R.divide(R.reduce(+, startingWith: A.zero, in: collection).doubleValue, by: R.length(collection).doubleValue)
    }

}

// swiftlint:enable line_length

/**

 Protocol for types that can be converted to Double.

*/

public protocol DoubleConvertible {

    /**

        The double value for the type.

    */

    var doubleValue: Double { get }

}

extension Int: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Int8: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Int16: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Int32: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Int64: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension UInt: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension UInt8: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension UInt16: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension UInt32: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension UInt64: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Float: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}

extension Double: DoubleConvertible {

    public var doubleValue: Double {

        get {

            return Double(self)

        }

    }

}
