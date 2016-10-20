//
//  BothTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/10.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class BothTests: XCTestCase {

    func isGreaterThan10(_ number: Int) -> Bool {
        return number > 10
    }

    func isEven(_ number: Int) -> Bool {
        return number % 2 == 0
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResult() {
        let number = 12
        let expectedResult = self.isGreaterThan10(number) && self.isEven(number)

        let both = R.both(self.isGreaterThan10)(self.isEven)
        let result = both(number)

        XCTAssertTrue(result == expectedResult)
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResultAndNotExecuteLastFunctionIfFirstIsFalse() {
        let number = 8
        let expectedResult = self.isGreaterThan10(number)
        var result = false
        let rhs: (Int) -> Bool = { _ in
            result = true
            return true
        }

        XCTAssertTrue(result == expectedResult)
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResultUsingPartialFunctions() {
        let number = 12
        let expectedResult = self.isGreaterThan10(number) && self.isEven(number)

        let partial = R.both(self.isGreaterThan10)
        let both = partial(self.isEven)
        let result = both(number)

        XCTAssertTrue(result == expectedResult)
    }
}

// swiftlint:enable line_length
