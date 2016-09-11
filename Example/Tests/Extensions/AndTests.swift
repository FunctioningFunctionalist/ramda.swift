//
//  AndTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/08.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class AndTests: XCTestCase {

    func testShouldAndBothFunctionsAndProduceCorrectResultWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXBoolean()) {
            (lhs: Bool) in

            let lhsFunc = { return lhs }
            let partial = R.and(lhsFunc)

            let booleanGenerator = FoxGeneratorParam1(FOXBoolean()) {
                (rhs: Bool) in

                let rhsFunc = { return rhs }

                let result = partial(and: rhsFunc)

                return result == (lhs && rhs)
            }

            return FoxTester.assert(booleanGenerator)
        }

        FoxTester.assert(partialGenerator)
    }

    func testShouldAndBothFunctionsAndProduceCorrectResult() {

        let booleanGenerator = FoxGeneratorParam2(FOXBoolean(), FOXBoolean()) {
            (lhs: Bool, rhs: Bool) in

            let lhsFunc = { return lhs }
            let rhsFunc = { return rhs }

            let result = R.and(lhsFunc, and: rhsFunc)

            return result == (lhs && rhs)
        }

        FoxTester.assert(booleanGenerator)
    }

    func testShouldAndBothConditionsAndProduceCorrectResultWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXBoolean()) {

            (lhs: Bool) in

            let partial = R.and(lhs)

            let booleanGenerator = FoxGeneratorParam1(FOXBoolean()) {
                (rhs: Bool) in

                let result = partial(and: rhs)
                return result == (lhs && rhs)
            }

            return FoxTester.assert(booleanGenerator)
        }

        FoxTester.assert(partialGenerator)
    }

    func testShouldAndBothConditionsAndProduceCorrectResult() {

        let booleanGenerator = FoxGeneratorParam2(FOXBoolean(), FOXBoolean()) {
            (lhs: Bool, rhs: Bool) in

            let result = R.and(lhs, and: rhs)
            return result == (lhs && rhs)
        }

        FoxTester.assert(booleanGenerator)
    }

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

        let result = R.and(lhsFunc, and: rhsFunc)

        XCTAssertFalse(result)
        XCTAssertTrue(executed)
    }
}
