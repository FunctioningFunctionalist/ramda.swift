//
// Created by Justin Guedes on 2016/09/13.
//

import Foundation

extension R {

    public class func difference<T: CollectionType, U: CollectionType
                                 where T.Generator.Element: Comparable, T.Generator.Element == U.Generator.Element>(array: T, from array2: U) -> [T.Generator.Element] {
        let check: (T.Generator.Element, U) -> Bool = R.complement(R.contains)
        return array.filter { (element: T.Generator.Element) -> Bool in check(element, array2) }
    }

    public class func difference<T: CollectionType, U: CollectionType
                                where T.Generator.Element: Comparable, T.Generator.Element == U.Generator.Element>(array: T) -> (from: U) -> [T.Generator.Element] {
        return curry(difference)(array)
    }

}
