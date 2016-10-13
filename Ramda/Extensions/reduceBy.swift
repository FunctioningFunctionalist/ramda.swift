//
//  reduceBy.swift
//  Pods
//
//  Created by TYRONE AVNIT on 10/12/16.
//
//

import Foundation

// swiftlint:disable line_length

extension R {

    public class func reduceBy<A: SequenceType, B, C, D: SequenceType where B == A.Generator.Element, C == D.Generator.Element>
        (valueFn: (A, B) -> D, valueAcc: A, keyFn: B -> String, list: A) -> [String: D] {
        
        typealias ReduceSignature = (startingWith: [String: D]) -> (in: A) -> [String: D]

        let reduceBy: ReduceSignature = R.reduce { (acc, elment) in
            var result = acc
            let key = keyFn(elment)
            result[key] = valueFn(valueAcc, elment)
            return result
        }

        return reduceBy(startingWith: [String: D]())(in: list)
    }

}

// swiftlint:enable line_length
