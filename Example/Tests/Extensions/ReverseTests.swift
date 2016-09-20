//
//  ReverseTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/20.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ReverseTests: XCTestCase {

    func testShouldReturnReversedArray() {
        let expectedResult = [9, 7, 5, 3, 1]

        let result = R.reverse([1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptyArrayWhenReversingEmptyArray() {
        let expectedResult = []

        let result = R.reverse([])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnReversedSet() {
        let input = Set(arrayLiteral: 1, 3, 5, 7, 9)
        let expectedResult = input.reverse()

        let result = R.reverse(input)

        XCTAssertEqual(expectedResult, result)
    }

}
