//
//  NotTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class NotTests: XCTestCase {

    func testShouldReturnTrueWhenValueIsFalse() {
        let result = R.not(false)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenValueIsTrue() {
        let result = R.not(true)

        XCTAssertFalse(result)
    }

}
