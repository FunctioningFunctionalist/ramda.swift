//
//  GtTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class GtTests: XCTestCase {

    func testShouldReturnTrueWhenFirstIntegerIsLargerThanSecond() {
        let result = R.gt(20)(than: 10)

        XCTAssertTrue(result)
    }

    func testShouldReturnTFalseWhenFirstIntegerIsSmallerThanSecond() {
        let result = R.gt(10)(than: 20)

        XCTAssertFalse(result)
    }

    func testShouldReturnFalseWhenFirstIntegerIsEqualToSecond() {
        let result = R.gt(20)(than: 20)

        XCTAssertFalse(result)
    }

}
