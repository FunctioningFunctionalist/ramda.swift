//
//  has.swift
//  Ramda
//
//  Created by Christian Leovido on 28/09/2019.
//

import Foundation

extension R {

    /**

     Returns whether or not an object has an own property with the specified name

     - parameter prop: Property to check

     - returns: True if the property exists; false is it doesn't

     */
    public class func has<A: Equatable>(_ prop: A) -> ([A: Any]) -> Bool {
        return { dictionary in
            return dictionary[prop] == nil ? false : true
        }
    }

    /**

     Returns whether or not an object has an own property with the specified name

     - parameter prop: Property to check

     - returns: True if the property exists; false is it doesn't

     */
    public class func has(propObj: String) -> (AnyObject) -> Bool {

        return { anyObject in

            let mirror = Mirror(reflecting: anyObject)

            return mirror.children.contains(where: { $0.label == propObj })

        }
    }

    /**

     Returns whether or not an object has an own property with the specified name

     - parameter prop: Property to check
     
     - returns: True if the property exists; false is it doesn't

     */
    public class func has(propObjStruct: String) -> (Any) -> Bool {

        return { anyObject in

            let mirror = Mirror(reflecting: anyObject)

            return mirror.children.contains(where: { $0.label == propObjStruct })

        }
    }
}
