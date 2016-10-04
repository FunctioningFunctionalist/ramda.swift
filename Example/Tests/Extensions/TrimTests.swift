//
//  TrimTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class TrimTests: XCTestCase {

    func testShouldReturnTrimmedString() {
        let expectedResult = "Example Test"

        let result = R.trim("     Example Test")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTrimmedStringFromBothEnds() {
        let expectedResult = "Example Test"

        let result = R.trim("     Example Test  ")

        XCTAssertEqual(expectedResult, result)
    }

}
