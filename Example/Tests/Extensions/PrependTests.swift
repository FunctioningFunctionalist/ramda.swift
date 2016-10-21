//
//  PrependTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class PrependTests: XCTestCase {

    func testShouldReturnArrayWithPrependedString() {
        let expectedResult = ["This", "Is", "An", "Example"]

        let result = R.prepend("This")(["Is", "An", "Example"])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArrayWithPrependedInteger() {
        let expectedResult = [1, 3, 5, 7, 9]

        let result = R.prepend(1)([3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

}
