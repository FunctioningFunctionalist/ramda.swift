//
// Created by Justin Guedes on 2016/09/08.
//

import Foundation

extension R {

    /**
        Ands both the values. Short circuits if 'lhs' is false.

        - parameter lhs: Bool function for the first condition.

        - returns: A partial function that accepts the second condition to produce
                    the result.

    */

    public class func and(lhs: () -> Bool) -> (rhs: () -> Bool) -> Bool {
        return { rhs in
            return lhs() && rhs()
        }
    }

    /**
        Ands both the values. Short circuits if 'lhs' is false.

        - parameter lhs: Bool function for the first condition.
        - parameter rhs: Bool function for the second condition.

        - returns: The result of both conditions being and-ed.

    */

    public class func and(lhs: () -> Bool, rhs: () -> Bool) -> Bool {
        return and(lhs)(rhs: rhs)
    }

    /**
        Ands both the values. Short circuits if 'lhs' is false.

        - parameter lhs: Bool for the first condition.

        - returns: A partial function that accepts the second condition to produce
                    the result.

    */

    public class func and(lhs: Bool) -> (rhs: Bool) -> Bool {
        return { rhs in
            return lhs && rhs
        }
    }

    /**
        Ands both the values. Short circuits if 'lhs' is false.

        - parameter lhs: Bool for the first condition.
        - parameter rhs: Bool for the second condition.

        - returns: The result of both conditions being and-ed.

    */

    public class func and(lhs: Bool, rhs: Bool) -> Bool {
        return and(lhs)(rhs: rhs)
    }

}
