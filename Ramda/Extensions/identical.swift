//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    public class func identical<T>(inout lhs: T, inout to rhs: T) -> Bool {
        return withUnsafePointers(&lhs, &rhs) {
            return $0 == $1
        }
    }

}
