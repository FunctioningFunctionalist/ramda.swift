//
//  ReduceRightTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/16/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

import Ramda

// swiftlint:disable line_length

class ReduceRightTests: XCTestCase {

    func testShouldReturnTheTotalAmountFromTheArray() {
        let expectedResult = 0

        let result = R.reduceRight(-)(startingWith: 3)(in: [1, 2])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMultipliedAmountFromTheSet() {
        let expectedResult = 5 * 4 * 3 * 2

        let result = R.reduce(*)(startingWith: 1)(in: Set(arrayLiteral: 2, 3, 4, 5))

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
