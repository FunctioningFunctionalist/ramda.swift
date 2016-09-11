//
//  CurryTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class CurryTests: XCTestCase {

    func add2(first: Int, second: Int) -> Int {
        return first + second
    }

    func add3(first: Int, second: Int, third: Int) -> Int {
        return first + second + third
    }

    func add4(first: Int, second: Int, third: Int, fourth: Int) -> Int {
        return first + second + third + fourth
    }

    func add5(first: Int, second: Int, third: Int, fourth: Int, fifth: Int) -> Int {
        return first + second + third + fourth + fifth
    }

    func testShouldCurryFunctionWithTwoParameters() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) { (first: Int, second: Int) in
            let expectedResult = self.add2(first, second: second)

            let partial = R.curry(self.add2)
            let result = partial(first)(second)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldCurryFunctionWithThreeParameters() {
        let integerGenerator = FoxGeneratorParam3(FOXInteger(), FOXInteger(), FOXInteger()) { (first: Int, second: Int, third: Int) in
            let expectedResult = self.add3(first, second: second, third: third)

            let partial = R.curry(self.add3)
            let result = partial(first)(second)(third)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldCurryFunctionWithFourParameters() {
        let integerGenerator = FoxGeneratorParam4(FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger()) { (first: Int, second: Int, third: Int, fourth: Int) in
            let expectedResult = self.add4(first, second: second, third: third, fourth: fourth)

            let partial = R.curry(self.add4)
            let result = partial(first)(second)(third)(fourth)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldCurryFunctionWithFiveParameters() {
        let integerGenerator = FoxGeneratorParam5(FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger(), FOXInteger()) { (first: Int, second: Int, third: Int, fourth: Int, fifth: Int) in
            let expectedResult = self.add5(first, second: second, third: third, fourth: fourth, fifth: fifth)

            let partial = R.curry(self.add5)
            let result = partial(first)(second)(third)(fourth)(fifth)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

}

// swiftlint:enable line_length
