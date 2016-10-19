//
//  LastTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/20.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class LastTests: XCTestCase {

    func testShouldReturnLastElementFromArray() {
        let expectedResult = 9

        let result = R.last([1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNilWhenGettingLastElementOfEmptyArray() {
        let input: [Int] = []

        let result = R.last(input)

        XCTAssertNil(result)
    }

    func testShouldReturnLastElementFromSet() {
        let input = Set(arrayLiteral: 1, 3, 5, 7, 9)
        let expectedResult = input.reversed().first

        let result = R.last(input)

        XCTAssertEqual(expectedResult, result)
    }

}
