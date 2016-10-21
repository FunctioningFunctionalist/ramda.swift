//
//  ClampTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ClampTests: XCTestCase {

    func testShouldReturnMaxIntegerWhenClampingIntegerThatIsGreaterThanMaxInteger() throws {
        let expectedResult = 10

        let result = try R.clamp(0)(10)(20)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnMinIntegerWhenClampingIntegerThatIsLessThanMinInteger() throws {
        let expectedResult = 0

        let result = try R.clamp(0)(10)(-5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnIntegerWhenClampingIntegerThatIsBetweenTheMinAndMax() throws {
        let expectedResult = 6

        let result = try R.clamp(0)(10)(6)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldThrowFatalExceptionWhenMinIsGreaterThanMax() throws {
        XCTAssertThrowsError(try R.clamp(10)(0)(5))
    }

    func testShouldReturnStringClosestToTheMinAndMaxString() throws {
        let expectedResult = "Te"

        let result = try R.clamp("String")("Test")("Te")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnAnotherStringClosestToTheMinAndMaxString() throws {
        let expectedResult = "String"

        let result = try R.clamp("String")("Test")("Str")

        XCTAssertEqual(expectedResult, result)
    }

}
