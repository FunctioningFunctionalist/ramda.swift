//
//  EqualsTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class EqualsTests: XCTestCase {

    func testShouldReturnTrueWhenIntegersAreEqual() {
        let result = R.equals(1)(1)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenIntegersAreNotEqual() {
        let result = R.equals(1)(2)

        XCTAssertFalse(result)
    }

}
