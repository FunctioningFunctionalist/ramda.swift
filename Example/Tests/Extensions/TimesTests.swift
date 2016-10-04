//
//  TimesTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class TimesTests: XCTestCase {

    func testShouldReturnArrayCountingConsecutively() {
        let expectedResult = [0, 1, 2, 3, 4]

        let result = R.times(R.identity)(for: 5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArrayOfStrings() {
        let expectedResult = ["0", "1", "2", "3", "4"]

        let result = R.times(R.toString)(for: 5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArrayOfDoubledIntegers() {
        let expectedResult = [0, 2, 4, 6, 8]

        let result = R.times(R.multiply(2))(for: 5)

        XCTAssertEqual(expectedResult, result)
    }

}
