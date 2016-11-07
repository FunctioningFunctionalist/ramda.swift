//
//  IncTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IncTests: XCTestCase {

    func testShouldIncrementIntegers() {
        let number: Int = 4
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementInteger8s() {
        let number: Int8 = 8
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementInteger16s() {
        let number: Int16 = 16
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementInteger32s() {
        let number: Int32 = 32
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementInteger64s() {
        let number: Int64 = 64
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementUnsignedIntegers() {
        let number: UInt = 10
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementUnsignedInteger8s() {
        let number: UInt8 = 8
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementUnsignedInteger16s() {
        let number: UInt16 = 16
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementUnsignedInteger32s() {
        let number: UInt32 = 32
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementUnsignedInteger64s() {
        let number: UInt64 = 64
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementFloats() {
        let number: Float = 35.5
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldIncrementDoubles() {
        let number: Double = 67.3
        let expectedResult = number + 1

        let result = R.inc(number)

        XCTAssertEqual(expectedResult, result)
    }

}
