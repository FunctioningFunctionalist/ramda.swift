//
//  defaultTo
//  Ramda
//
//  Created by adrian koren on 7/17/19.
//

import Foundation
extension R {
    /**
     
     Returns the second argument if it is not `nill`;
     otherwise the first argument is returned.
     
     - parameter default: The default value.
     - parameter item: `val` will be returned instead of `default` unless `val` is `null`,
     
     - returns: The valueor the default.
     
     */
    public class func defaultTo<T>(_ `default`: T, _ item: T?) -> T {
        return item ?? `default`
    }
    
    /**
     
     Returns the second argument if it is not `nill`;
     otherwise the first argument is returned.
     
     - parameter default: The default value.
     - returns: Curried function
     
     */
    
    public class func defaultTo<T>(_ `default`: T) -> (_ item: T?) -> T {
        return curry(defaultTo)(`default`)
    }
    
}
