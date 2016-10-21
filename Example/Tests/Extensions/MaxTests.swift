//
//  MaxTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MaxTests: XCTestCase {

    func testShouldReturnTheLargerIntegerOfTheTwo() {
        let expectedResult = 10

        let result = R.max(5)(10)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheLargerStringOfTheTwo() {
        let expectedResult = "z"

        let result = R.max("a")("z")

        XCTAssertEqual(expectedResult, result)
    }

}
