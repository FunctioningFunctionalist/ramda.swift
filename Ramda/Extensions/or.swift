//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**
        Ors both the values. Short circuits if 'lhs' is true.

        - parameter lhs: Bool function for the first condition.
        - parameter rhs: Bool function for the second condition.

        - returns: The result of both conditions being or-ed.

    */

    public class func or(lhs: () -> Bool, or rhs: () -> Bool) -> Bool {
        return lhs() || rhs()
    }

    /**
        Ors both the values. Short circuits if 'lhs' is true.

        - parameter lhs: Bool function for the first condition.

        - returns: A curried function that accepts the second condition to produce
                    the result.

    */

    public class func or(lhs: () -> Bool) -> (or: () -> Bool) -> Bool {
        return curry(or)(lhs)
    }

    /**
        Ors both the values. Short circuits if 'lhs' is true.

        - parameter lhs: Bool for the first condition.
        - parameter rhs: Bool for the second condition.

        - returns: The result of both conditions being or-ed.

    */

    public class func or(lhs: Bool, or rhs: Bool) -> Bool {
        return lhs || rhs
    }

    /**
        Ors both the values. Short circuits if 'lhs' is true.

        - parameter lhs: Bool for the first condition.

        - returns: A curried function that accepts the second condition to produce
                    the result.

    */

    public class func or(lhs: Bool) -> (or: Bool) -> Bool {
        return curry(or)(lhs)
    }

}
