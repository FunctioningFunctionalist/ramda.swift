//
//  RangeTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class RangeTests: XCTestCase {

    func testShouldReturnRangeFromOneToFour() {
        let expectedResult = [1, 2, 3, 4]

        let result = R.range(1)(to: 5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnRangeFromFiftyToFiftyTwo() {
        let expectedResult = [50, 51, 52]

        let result = R.range(50)(to: 53)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnRangeFromOneToOneHundredWhereOneIsIncludedAndOneHundredIsExcluded() {
        let expectedLength = 99

        let result = R.range(1)(to: 100)

        XCTAssertEqual(1, result.first)
        XCTAssertEqual(99, result.last)
        XCTAssertEqual(expectedLength, result.count)
    }

}
