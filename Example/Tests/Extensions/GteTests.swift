//
//  GteTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class GteTests: XCTestCase {

    func testShouldReturnTrueWhenFirstIntegerIsLargerThanSecond() {
        let result = R.gte(20)(than: 10)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenFirstIntegerIsSmallerThanSecond() {
        let result = R.gte(10)(than: 20)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenFirstIntegerIsEqualToSecond() {
        let result = R.gte(20)(than: 20)

        XCTAssertTrue(result)
    }

}
