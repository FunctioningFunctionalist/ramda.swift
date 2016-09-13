//
//  ClampTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ClampTests: XCTestCase {

    func testShouldReturnMaxIntegerWhenClampingIntegerThatIsGreaterThanMaxInteger() throws {
        let expectedResult = 10

        let result = try R.clamp(0)(and: 10)(with: 20)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnMinIntegerWhenClampingIntegerThatIsLessThanMinInteger() throws {
        let expectedResult = 0

        let result = try R.clamp(0)(and: 10)(with: -5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnIntegerWhenClampingIntegerThatIsBetweenTheMinAndMax() throws {
        let expectedResult = 6

        let result = try R.clamp(0)(and: 10)(with: 6)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldThrowFatalExceptionWhenMinIsGreaterThanMax() throws {
        XCTAssertThrowsError(try R.clamp(10)(and: 0)(with: 5))
    }

    func testShouldReturnStringClosestToTheMinAndMaxString() throws {
        let expectedResult = "Te"

        let result = try R.clamp("String")(and: "Test")(with: "Te")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnAnotherStringClosestToTheMinAndMaxString() throws {
        let expectedResult = "String"

        let result = try R.clamp("String")(and: "Test")(with: "Str")

        XCTAssertEqual(expectedResult, result)
    }

}
