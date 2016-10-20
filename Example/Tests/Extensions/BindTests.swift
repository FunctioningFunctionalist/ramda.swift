//
//  BindTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class BindTests: XCTestCase {

    func increment(_ num: Int) -> Int {
        return num + 1
    }

    func add3(_ num1: Int, num2: Int, num3: Int) -> Int {
        return num1 + num2 + num3
    }

    func add4(_ num1: Int, num2: Int, num3: Int, num4: Int) -> Int {
        return num1 + num2 + num3 + num4
    }

    func addV(_ numbers: Int...) -> Int {
        return numbers.reduce(0, +)
    }

    func testShouldBindOneParameterToFunctionAndReturnCorrectResult() {
        let number = 1

        let bound = R.bind(self.increment)(number)
        let result = bound()
        let expectedResult = (number + 1)

        XCTAssertTrue(result == expectedResult)
    }

    func testShouldBindTwoParametersToFunctionAndReturnCorrectResult() {
        let number1 = 1
        let number2 = 2

        let bound = R.bind(R.add)(number1)(number2)
        let result = bound()

        XCTAssertTrue(result == (number1 + number2))
    }

    func testShouldBindThreeParametersToFunctionAndReturnCorrectResult() {
        let number1 = 1
        let number2 = 2
        let number3 = 3

        let bound = R.bind(self.add3)(number1)(number2)(number3)
        let result = bound()

        XCTAssertTrue(result == (number1 + number2 + number3))
    }

    func testShouldBindFourParametersToFunctionAndReturnCorrectResult() {
        let number1 = 1
        let number2 = 2
        let number3 = 3
        let number4 = 4

        let bound = R.bind(self.add4)(number1)(number2)(number3)(number4)
        let result = bound()

        XCTAssertTrue(result == (number1 + number2 + number3 + number4))
    }

    func testShouldBindVarargParameterToFunctionAndReturnCorrectResult() {
        let number1 = 1
        let number2 = 2

        let bound = R.bind(self.addV)(number1, number2)
        let result = bound()

        XCTAssertTrue(result == (number1 + number2))
    }

    func testShouldBindVarargParametersOfAnyLengthAndReturnCorrectResult() {
        let number1 = 1
        let number2 = 2
        let number3 = 3
        let number4 = 4
        let number5 = 5

        let bound = R.bind(self.addV, with: number1, number2, number3, number4, number5)
        let result = bound()

        let expectedResult = (number1 + number2 + number3 + number4 + number5)

        XCTAssertTrue(result == expectedResult)
    }

}

// swiftlint:enable line_length
