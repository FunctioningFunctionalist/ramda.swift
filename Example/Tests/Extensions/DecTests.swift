//
//  DecTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class DecTests: XCTestCase {

    func testShouldDecrementIntegers() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
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
        let floatGenerator = FoxGeneratorParam1(FOXFloat()) { (number: Float) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(floatGenerator)
    }

    func testShouldDecrementDoubles() {
        let doubleGenerator = FoxGeneratorParam1(FOXDouble()) { (number: Double) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(doubleGenerator)
    }

}
