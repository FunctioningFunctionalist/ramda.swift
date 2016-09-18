//
//  ProductTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ProductTests: XCTestCase {

    func testShouldReturnProductOfIntegers() {
        let expectedResult: Int = 120
        let input: [Int] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfInteger8s() {
        let expectedResult: Int8 = 120
        let input: [Int8] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfInteger16s() {
        let expectedResult: Int16 = 120
        let input: [Int16] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfInteger32s() {
        let expectedResult: Int32 = 120
        let input: [Int32] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfInteger64s() {
        let expectedResult: Int64 = 120
        let input: [Int64] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfUnsignedIntegers() {
        let expectedResult: UInt = 120
        let input: [UInt] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfUnsignedInteger8s() {
        let expectedResult: UInt8 = 120
        let input: [UInt8] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfUnsignedInteger16s() {
        let expectedResult: UInt16 = 120
        let input: [UInt16] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfUnsignedInteger32s() {
        let expectedResult: UInt32 = 120
        let input: [UInt32] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfUnsignedInteger64s() {
        let expectedResult: UInt64 = 120
        let input: [UInt64] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfFloats() {
        let expectedResult: Float = 120
        let input: [Float] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnProductOfDoubles() {
        let expectedResult: Double = 120
        let input: [Double] = [1, 2, 3, 4, 5]

        let result = R.product(input)

        XCTAssertEqual(expectedResult, result)
    }

}
