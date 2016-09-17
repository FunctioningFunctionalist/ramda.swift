//
//  IsTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/17.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IsTests: XCTestCase {

    func testShouldReturnTrueWhenTypeMatchesTheValue() {
        let result = R._is(Int.self, value: 10)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenTypeDoesNotMatchTheValue() {
        let result = R._is(Int.self, value: "Example")

        XCTAssertFalse(result)
    }

}
