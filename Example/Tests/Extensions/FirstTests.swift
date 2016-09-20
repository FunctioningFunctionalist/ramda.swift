//
//  FirstTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/20.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class FirstTests: XCTestCase {

    func testShouldReturnFirstElementFromArray() {
        let expectedResult = 1

        let result = R.first([1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNilWhenGettingFirstElementFromEmptyArray() {
        let input: [Int] = []

        let result = R.first(input)

        XCTAssertNil(result)
    }

    func testShouldReturnFirstElementFromSet() {
        let input = Set(arrayLiteral: 1, 3, 5, 7, 9)
        let expectedResult = input.first

        let result = R.first(input)

        XCTAssertEqual(expectedResult, result)
    }

}
