//
//  DecTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DecTests: XCTestCase {

    func testShouldDecrementIntegers() {
        let number: Int = 8
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementInteger8s() {
        let number: Int8 = 8
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementInteger16s() {
        let number: Int16 = 16
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementInteger32s() {
        let number: Int32 = 32
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementInteger64s() {
        let number: Int64 = 64
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementUnsignedIntegers() {
        let number: UInt = 10
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementUnsignedInteger8s() {
        let number: UInt8 = 8
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementUnsignedInteger16s() {
        let number: UInt16 = 16
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementUnsignedInteger32s() {
        let number: UInt32 = 32
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementUnsignedInteger64s() {
        let number: UInt64 = 64
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementFloats() {
        let number: Float = 8
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDecrementDoubles() {
        let number: Double = 8
        let expectedResult = number - 1

        let result = R.dec(number)

        XCTAssertEqual(expectedResult, result)
    }

}
