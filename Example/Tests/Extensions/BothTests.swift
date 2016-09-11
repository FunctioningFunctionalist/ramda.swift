//
//  BothTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/10.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class BothTests: XCTestCase {

    func isGreaterThan10(number: Int) -> Bool {
        return number > 10
    }

    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let expectedResult = self.isGreaterThan10(number) && self.isEven(number)

            let both = R.both(self.isGreaterThan10, rhs: self.isEven)
            let result = both(number)

            return result == expectedResult
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResultAndNotExecuteLastFunctionIfFirstIsFalse() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let expectedResult = self.isGreaterThan10(number)
            var result = false
            let rhs: (Int) -> Bool = { _ in
                result = true
                return true
            }

            let both = R.both(self.isGreaterThan10, rhs: rhs)
            both(number)

            return result == expectedResult
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldCreateFunctionThatComparesBothPassedInFunctionsAndReturnCorrectResultUsingPartialFunctions() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let expectedResult = self.isGreaterThan10(number) && self.isEven(number)

            let partial = R.both(self.isGreaterThan10)
            let both = partial(rhs: self.isEven)
            let result = both(number)

            return result == expectedResult
        }

        FoxTester.assert(integerGenerator)
    }
}

// swiftlint:enable line_length
