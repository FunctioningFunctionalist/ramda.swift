//
//  SubtractTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class SubtractTests: XCTestCase {

    func testShouldSubtractTwoIntegers() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) { (number1: Int, number2: Int) in
            let expectedResult = number1 - number2

            let result = R.subtract(number1)(minus: number2)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldSubtractTwoFloats() {
        let floatGenerator = FoxGeneratorParam2(FOXFloat(), FOXFloat()) { (number1: Float, number2: Float) in
            let expectedResult = number1 - number2

            let result = R.subtract(number1)(minus: number2)

            return expectedResult == result
        }

        FoxTester.assert(floatGenerator)
    }

    func testShouldSubtractTwoDoubles() {
        let doubleGenerator = FoxGeneratorParam2(FOXDouble(), FOXDouble()) { (number1: Double, number2: Double) in
            let expectedResult = number1 - number2

            let result = R.subtract(number1)(minus: number2)

            return expectedResult == result
        }

        FoxTester.assert(doubleGenerator)
    }

}

// swiftlint:enable line_length
