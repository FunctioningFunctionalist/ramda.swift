//
//  ToUpperTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ToUpperTests: XCTestCase {

    func testShouldUpperCaseString() {
        let expectedResult = "EXAMPLE"

        let result = R.toUpper("example")

        XCTAssertEqual(expectedResult, result)
    }

}
