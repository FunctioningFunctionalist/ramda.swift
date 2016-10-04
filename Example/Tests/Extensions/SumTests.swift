//
//  SumTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class SumTests: XCTestCase {

    func testShouldReturnSumOfIntegers() {
        let expectedResult: Int = 15
        let input: [Int] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfInteger8s() {
        let expectedResult: Int8 = 15
        let input: [Int8] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfInteger16s() {
        let expectedResult: Int16 = 15
        let input: [Int16] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfInteger32s() {
        let expectedResult: Int32 = 15
        let input: [Int32] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfInteger64s() {
        let expectedResult: Int64 = 15
        let input: [Int64] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfUnsignedIntegers() {
        let expectedResult: UInt = 15
        let input: [UInt] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfUnsignedInteger8s() {
        let expectedResult: UInt8 = 15
        let input: [UInt8] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfUnsignedInteger16s() {
        let expectedResult: UInt16 = 15
        let input: [UInt16] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfUnsignedInteger32s() {
        let expectedResult: UInt32 = 15
        let input: [UInt32] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfUnsignedInteger64s() {
        let expectedResult: UInt64 = 15
        let input: [UInt64] = [1, 2, 3, 4, 5]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfFloats() {
        let expectedResult: Float = 16
        let input: [Float] = [1.2, 2.2, 3.2, 4.2, 5.2]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSumOfDoubles() {
        let expectedResult: Double = 16
        let input: [Double] = [1.2, 2.2, 3.2, 4.2, 5.2]

        let result = R.sum(input)

        XCTAssertEqual(expectedResult, result)
    }

}
