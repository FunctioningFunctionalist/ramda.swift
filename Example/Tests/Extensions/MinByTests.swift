//
//  MinByTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MinByTests: XCTestCase {

    func testShouldReturnSmallerDoubledInteger() {
        let expectedResult = 49

        let result = R.minBy { $0 * $0 } (7)(8)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheSmallerStringFromIntegerElements() {
        let expectedResult = "1"

        let result = R.minBy { String($0) } (1)(9)

        XCTAssertEqual(expectedResult, result)
    }

}
