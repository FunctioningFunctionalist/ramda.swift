//
// Created by TYRONE AVNIT on 2016/09/06.
//

import Foundation

extension R {

    public class func all<T>(function: (T) -> Bool) -> (array: [T]) -> Bool {
        return { array in
            for element in array {
                if !function(element) {
                    return false
                }
            }
            return true
        }
    }

    public class func all<T>(function: (T) -> Bool, array: [T]) -> Bool {
        return all(function)(array: array)
    }

}
