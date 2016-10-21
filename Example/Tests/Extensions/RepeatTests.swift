//
//  RepeatTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class RepeatTests: XCTestCase {

    func testShouldReturnArrayOfFiveStrings() {
        let expectedResult = ["hi", "hi", "hi", "hi", "hi"]

        let result = R._repeat("hi")(5)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArrayOfTenIntegers() {
        let expectedResult = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

        let result = R._repeat(1)(10)

        XCTAssertEqual(expectedResult, result)
    }

}
