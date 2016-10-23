//
//  OrTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class OrTests: XCTestCase {

    func testShouldNotExecuteSecondConditionIfFirstConditionIsTrue() {

        let lhsFunc: () -> Bool = {
            return true
        }

        var executed = false
        let rhsFunc: () -> Bool = {
            executed = true
            return true
        }

        let result = R.or(lhsFunc, or: rhsFunc)

        XCTAssertTrue(result)
        XCTAssertFalse(executed)
    }

    func testShouldExecuteSecondConditionIfFirstConditionIsFalse() {

        let lhsFunc: () -> Bool = {
            return false
        }

        var executed = false
        let rhsFunc: () -> Bool = {
            executed = true
            return false
        }

        let result = R.or(lhsFunc)(rhsFunc)

        XCTAssertFalse(result)
        XCTAssertTrue(executed)
    }

    func testShouldReturnTrueIfEitherArgumentIsTrue() {
        let result = R.or(false)(true)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseIfBothArgumentsAreFalse() {
        let result = R.or(false)(false)

        XCTAssertFalse(result)
    }

}
