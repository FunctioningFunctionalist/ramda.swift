//
//  LengthTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class LengthTests: XCTestCase {

    func testShouldReturnLengthOfTheArray() {
        let expectedResult = 5

        let result = R.length([1, 2, 3, 4, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnLengthOfDictionary() {
        let expectedResult = 2

        let result = R.length(["One": 1, "Two": 2])

        XCTAssertEqual(expectedResult, result)
    }

}
