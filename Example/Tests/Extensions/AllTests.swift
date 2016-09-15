//
//  AllTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AllTests: XCTestCase {

    func testShouldReturnTrueWhenAllValuesPassThePredicateTest() {
        let lessThanSix = { $0 < 6 }
        let array = [4, 2, 3]

        let result = R.all(lessThanSix)(in: array)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenAllValuesDoNotPassThePredicateTest() {
        let lessThanSix = { $0 < 6 }
        let array = [4, 2, 6]

        let result = R.all(lessThanSix, in: array)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenCertainValueInDictionaryPassesThePredicateTest() {
        let lessThanSix: ((String, Int)) -> Bool = {
            if $0.0 == "Index1" { return $0.1 < 6 } else { return true }
        }
        let dictionary = ["Index0": 7, "Index1": 2, "Index2": 9]

        let result = R.all(lessThanSix, in: dictionary)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenSomeValuesInSetDoNotPassThePredicateTest() {
        let lessThanSix = { $0 < 6 }
        let set = Set(arrayLiteral: 4, 2, 6)

        let result = R.all(lessThanSix, in: set)

        XCTAssertFalse(result)
    }

}
