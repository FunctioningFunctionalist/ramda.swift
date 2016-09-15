//
//  BindTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class BindTests: XCTestCase {

    func increment(num: Int) -> Int {
        return num + 1
    }

    func add3(num1: Int, num2: Int, num3: Int) -> Int {
        return num1 + num2 + num3
    }

    func add4(num1: Int, num2: Int, num3: Int, num4: Int) -> Int {
        return num1 + num2 + num3 + num4
    }

    func addV(numbers: Int...) -> Int {
        return numbers.reduce(0, combine: +)
    }

    func testShouldBindOneParameterToFunctionAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let bound = R.bind(self.increment)(with: number)
            let result = bound()

            return result == (number + 1)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldBindTwoParametersToFunctionAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) { (number1: Int, number2: Int) in
            let bound = R.bind(R.add)(with: number1)(and: number2)
            let result = bound()

            return result == (number1 + number2)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldBindThreeParametersToFunctionAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam3(FOXInteger(), FOXInteger(), FOXInteger()) { (number1: Int, number2: Int, number3: Int) in
            let bound = R.bind(self.add3)(with: number1)(number2)(and: number3)
            let result = bound()

            return result == (number1 + number2 + number3)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldBindFourParametersToFunctionAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam4(FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger()) { (number1: Int, number2: Int, number3: Int, number4: Int) in
            let bound = R.bind(self.add4)(with: number1)(number2)(number3)(and: number4)
            let result = bound()

            return result == (number1 + number2 + number3 + number4)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldBindVarargParameterToFunctionAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) { (number1: Int, number2: Int) in
            let bound = R.bind(self.addV)(with:number1, number2)
            let result = bound()

            return result == (number1 + number2)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldBindVarargParametersOfAnyLengthAndReturnCorrectResult() {
        let integerGenerator = FoxGeneratorParam5(FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger()) { (number1: Int, number2: Int, number3: Int, number4: Int, number5: Int) in
            let bound = R.bind(self.addV, with:number1, number2, number3, number4, number5)
            let result = bound()

            return result == (number1 + number2 + number3 + number4 + number5)
        }

        FoxTester.assert(integerGenerator)
    }

}

// swiftlint:enable line_length
