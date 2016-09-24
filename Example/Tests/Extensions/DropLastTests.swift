//
//  DropLastTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/24.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DropLastTests: XCTestCase {

    func testShouldReturnSlicedArrayWithoutLastTwoElements() {
        let expectedResult: ArraySlice<Int> = [1, 2, 3]

        let result = R.dropLast(2)(in: [1, 2, 3, 4, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSlicedArrayWithoutLastFiveElements() {
        let expectedResult: ArraySlice<Int> = [1]

        let result = R.dropLast(5)(in: [1, 2, 3, 4, 5, 6])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptySlicedArrayWithoutLastTenElementsAndArrayOnlyContainsFive() {
        let expectedResult: ArraySlice<Int> = []

        let result = R.dropLast(10)(in: [1, 2, 3, 4, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnStringWithoutLastSevenCharacters() {
        let expectedResult = "Test"

        let result = R.dropLast(7, in: "TestExample".characters)
        let stringResult = String(result)

        XCTAssertEqual(expectedResult, stringResult)
    }

}
