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

        let result = R.all(lessThanSix, array: array)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenAllValuesDoNotPassThePredicateTest() {
        let lessThanSix = { $0 < 6 }
        let array = [4, 2, 6]

        let result = R.all(lessThanSix, array: array)

        XCTAssertFalse(result)
    }

}
