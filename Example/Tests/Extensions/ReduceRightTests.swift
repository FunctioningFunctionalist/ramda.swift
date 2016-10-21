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

        let result = R.reduceRight(-)(3)([1, 2])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheMultipliedAmountFromTheSet() {
        let expectedResult = 5 * 4 * 3 * 2

        let result = R.reduce(*)(1)(Set(arrayLiteral: 2, 3, 4, 5))

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
