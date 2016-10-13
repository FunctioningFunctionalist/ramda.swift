//
//  ReduceTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class ReduceTests: XCTestCase {

    func testShouldReturnTheTotalAmountFromTheArray() {
        let expectedResult = 16

        let result = R.reduce(+)(startingWith: 10)(in: [1, 2, 3])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMultipliedAmountFromTheSet() {
        let expectedResult = 2 * 3 * 4 * 5

        let result = R.reduce(*)(startingWith: 1)(in: Set(arrayLiteral: 2, 3, 4, 5))

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
