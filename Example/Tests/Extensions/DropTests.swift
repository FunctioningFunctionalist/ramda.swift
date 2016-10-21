//
//  DropTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DropTests: XCTestCase {

    func testShouldReturnSlicedArrayWithoutFirstTwoElements() {
        let expectedResult: ArraySlice<Int> = [3, 4, 5]

        let result = R.drop(2)([1, 2, 3, 4, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSlicedArrayWithoutFirstFiveElements() {
        let expectedResult: ArraySlice<Int> = [6]

        let result = R.drop(5)([1, 2, 3, 4, 5, 6])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptySlicedArrayWithoutFirstTenElementsAndArrayOnlyContainsFive() {
        let expectedResult: ArraySlice<Int> = []

        let result = R.drop(10)([1, 2, 3, 4, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnStringWithoutFirstFourCharacters() {
        let expectedResult = "Example"

        let result = R.drop(4, in: "TestExample".characters)
        let stringResult = String(result)

        XCTAssertEqual(expectedResult, stringResult)
    }

}
