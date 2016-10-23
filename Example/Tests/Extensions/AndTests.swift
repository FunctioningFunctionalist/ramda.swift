//
//  AndTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/08.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AndTests: XCTestCase {

    func testShouldNotExecuteSecondConditionIfFirstConditionIsFalse() {

        let lhsFunc: () -> Bool = {
            return false
        }

        var executed = false
        let rhsFunc: () -> Bool = {
            executed = true
            return true
        }

        let result = R.and(lhsFunc, and: rhsFunc)

        XCTAssertFalse(result)
        XCTAssertFalse(executed)
    }

    func testShouldExecuteSecondConditionIfFirstConditionIsTrue() {

        let lhsFunc: () -> Bool = {
            return true
        }

        var executed = false
        let rhsFunc: () -> Bool = {
            executed = true
            return false
        }

        let result = R.and(lhsFunc)(rhsFunc)

        XCTAssertFalse(result)
        XCTAssertTrue(executed)
    }

    func testShouldReturnTrueWhenBothConditionsAreTrue() {
        let result = R.and(true)(true)
        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenOneOfTheConditionsAreFalse() {
        let result = R.and(true)(false)
        XCTAssertFalse(result)
    }
}
