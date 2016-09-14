//
// Created by TYRONE AVNIT on 2016/09/13.
//

import Foundation

class Utilities {

    class func executePredicates(array: [() -> Bool]) -> Bool {
        for predicate in array {
            if !predicate() {
                return false
            }
        }

        return true
    }

}
