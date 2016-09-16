//
//  LteTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class LteTests: XCTestCase {

    func testShouldReturnTrueWhenFirstIntegerIsSmallerThanSecond() {
        let result = R.lte(10)(than: 20)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenFirstIntegerIsLargerThanSecond() {
        let result = R.lte(20)(than: 10)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenFirstIntegerIsEqualToSecond() {
        let result = R.lte(20)(than: 20)

        XCTAssertTrue(result)
    }

}
