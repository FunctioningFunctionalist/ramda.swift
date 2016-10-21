//
//  SubtractTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class SubtractTests: XCTestCase {

    func testShouldSubtractTwoIntegers() {
        let number1 = 1
        let number2 = 2

        let expectedResult = number1 - number2

        let result = R.subtract(number1)(number2)

        XCTAssertTrue(expectedResult == result)
    }

    func testShouldSubtractTwoFloats() {
        let number1: Float = 1.1
        let number2: Float = 1.3

        let expectedResult = number1 - number2

        let result = R.subtract(number1)(number2)

        XCTAssertTrue(expectedResult == result)
    }

    func testShouldSubtractTwoDoubles() {
        let number1: Double = 0.1
        let number2: Double = 1.3

        let expectedResult = number1 - number2

        let result = R.subtract(number1)(number2)

        XCTAssertTrue(expectedResult == result)
    }

}

// swiftlint:enable line_length
