//
//  LtTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class LtTests: XCTestCase {

    func testShouldReturnTrueWhenFirstIntegerIsSmallerThanSecond() {
        let result = R.lt(10)(than: 20)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenFirstIntegerIsLargerThanSecond() {
        let result = R.lt(20)(than: 10)

        XCTAssertFalse(result)
    }

    func testShouldReturnFalseWhenFirstIntegerIsEqualToSecond() {
        let result = R.lt(20)(than: 20)

        XCTAssertFalse(result)
    }

}
