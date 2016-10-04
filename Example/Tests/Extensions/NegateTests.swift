//
//  NegateTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class NegateTests: XCTestCase {

    func testShouldReturnNegativeNumberWhenNegatingPositiveNumber() {
        let expectedResult = -5

        let result = R.negate(5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnPositiveNumberWhenNegatingNegativeNumber() {
        let expectedResult = 8.54

        let result = R.negate(-8.54)

        XCTAssertEqual(expectedResult, result)
    }

}
