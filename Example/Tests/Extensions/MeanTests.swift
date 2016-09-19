//
//  MeanTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MeanTests: XCTestCase {

    func testShouldReturnTheMeanForAnArrayOfIntegers() {
        let expectedResult: Double = 1
        let input: [Int] = [1]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfInteger8s() {
        let expectedResult: Double = 1.5
        let input: [Int8] = [1, 2]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfInteger16s() {
        let expectedResult: Double = 2
        let input: [Int16] = [1, 2, 3]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfInteger32s() {
        let expectedResult: Double = 2.5
        let input: [Int32] = [1, 2, 3, 4]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfInteger64s() {
        let expectedResult: Double = 3
        let input: [Int64] = [1, 2, 3, 4, 5]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfUnsignedIntegers() {
        let expectedResult: Double = 3.5
        let input: [UInt] = [1, 2, 3, 4, 5, 6]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfUnsignedInteger8s() {
        let expectedResult: Double = 4
        let input: [UInt8] = [1, 2, 3, 4, 5, 6, 7]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfUnsignedInteger16s() {
        let expectedResult: Double = 4.5
        let input: [UInt16] = [1, 2, 3, 4, 5, 6, 7, 8]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfUnsignedInteger32s() {
        let expectedResult: Double = 5
        let input: [UInt32] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfUnsignedInteger64s() {
        let expectedResult: Double = 5.5
        let input: [UInt64] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfFloats() {
        let expectedResult: Double = 6
        let input: [Float] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMeanForAnArrayOfDoubles() {
        let expectedResult: Double = 6.5
        let input: [Double] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

        let result = R.mean(input)

        XCTAssertEqual(expectedResult, result)
    }

}
