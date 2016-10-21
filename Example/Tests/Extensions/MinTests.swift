//
//  MinTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MinTests: XCTestCase {

    func testShouldReturnTheSmallerIntegerOfTheTwo() {
        let expectedResult = 5

        let result = R.min(5)(10)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheSmallerStringOfTheTwo() {
        let expectedResult = "a"

        let result = R.min("a")("z")

        XCTAssertEqual(expectedResult, result)
    }

}
