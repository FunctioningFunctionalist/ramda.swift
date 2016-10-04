//
//  NthTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/20.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class NthTests: XCTestCase {

    func testShouldGetSecondIndexFromArray() {
        let expectedResult = 3

        let result = R.nth(1)(in: [1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldGetFourthIndexFromSet() {
        let input = Set(arrayLiteral: 1, 3, 5, 7, 9)
        let expectedResult = R.drop(3, in: input).first

        let result = R.nth(3)(in: input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldGetFirstIndexFromArrayWhenIndexIsNegative() {
        let expectedResult = 1

        let result = R.nth(-5)(in: [1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

}
