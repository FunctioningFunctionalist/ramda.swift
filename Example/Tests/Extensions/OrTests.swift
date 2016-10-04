//
//  OrTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class OrTests: XCTestCase {

    func testShouldOrBothFunctionsAndProduceCorrectResultWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXBoolean()) {
            (lhs: Bool) in

            let lhsFunc = { return lhs }
            let partial = R.or(lhsFunc)

            let booleanGenerator = FoxGeneratorParam1(FOXBoolean()) {
                (rhs: Bool) in

                let rhsFunc = { return rhs }

                let result = partial(or: rhsFunc)

                return result == (lhs || rhs)
            }

            return FoxTester.assert(booleanGenerator)
        }

        FoxTester.assert(partialGenerator)
    }

    func testShouldOrBothFunctionsAndProduceCorrectResult() {

        let booleanGenerator = FoxGeneratorParam2(FOXBoolean(), FOXBoolean()) {
            (lhs: Bool, rhs: Bool) in

            let lhsFunc = { return lhs }
            let rhsFunc = { return rhs }

            let result = R.or(lhsFunc)(or: rhsFunc)

            return result == (lhs || rhs)
        }

        FoxTester.assert(booleanGenerator)
    }

    func testShouldAndOrConditionsAndProduceCorrectResultWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXBoolean()) {

            (lhs: Bool) in

            let partial = R.or(lhs)

            let booleanGenerator = FoxGeneratorParam1(FOXBoolean()) {
                (rhs: Bool) in

                let result = partial(or: rhs)
                return result == (lhs || rhs)
            }

            return FoxTester.assert(booleanGenerator)
        }

        FoxTester.assert(partialGenerator)
    }

    func testShouldOrBothConditionsAndProduceCorrectResult() {

        let booleanGenerator = FoxGeneratorParam2(FOXBoolean(), FOXBoolean()) {
            (lhs: Bool, rhs: Bool) in

            let result = R.or(lhs)(or: rhs)
            return result == (lhs || rhs)
        }

        FoxTester.assert(booleanGenerator)
    }

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

        let result = R.or(lhsFunc)(or: rhsFunc)

        XCTAssertFalse(result)
        XCTAssertTrue(executed)
    }

}
