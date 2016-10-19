//
//  EitherTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class EitherTests: XCTestCase {

    func testShouldReturnTrueAndNotExecuteTheSecondFunctionWhenTheFirstPredicateIsTrue() {
        var executed = false
        let isEven: (Int) -> Bool = {
            return $0 % 2 == 0
        }

        let isGreaterThan10: (Int) -> Bool = {
            executed = true
            return $0 > 10
        }

        let either = R.either(isEven)(or: isGreaterThan10)
        let result = either(12)

        XCTAssertTrue(result)
        XCTAssertFalse(executed)
    }

    func testShouldReturnTrueAndExecuteBothPredicatesWhenFirstPredicateIsFalse() {
        var executed = false
        let isEven: (Int) -> Bool = {
            return $0 % 2 == 0
        }

        let isGreaterThan10: (Int) -> Bool = {
            executed = true
            return $0 > 10
        }

        let either = R.either(isEven)(or: isGreaterThan10)
        let result = either(13)

        XCTAssertTrue(result)
        XCTAssertTrue(executed)
    }

    func testShouldReturnFalseWhenBothPredicatesResultInFalse() {
        var executed = false
        let isEven: (Int) -> Bool = {
            return $0 % 2 == 0
        }

        let isGreaterThan10: (Int) -> Bool = {
            executed = true
            return $0 > 10
        }

        let either = R.either(isEven)(or: isGreaterThan10)
        let result = either(7)

        XCTAssertFalse(result)
        XCTAssertTrue(executed)
    }

}
