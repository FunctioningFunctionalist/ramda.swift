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

    func add2Throws(first: Int, second: Int) throws -> Int {
        return first + second
    }

    func add3Throws(first: Int, second: Int, third: Int) throws -> Int {
        return first + second + third
    }

    func add4Throws(first: Int, second: Int, third: Int, fourth: Int) throws -> Int {
        return first + second + third + fourth
    }

    func add5Throws(first: Int, second: Int, third: Int, fourth: Int, fifth: Int) throws -> Int {
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

    func testShouldCurryFunctionWithTwoParametersAndCanThrowExceptions() throws {
        let expectedResult = self.add2(1, second: 2)

        let partial = R.curry(self.add2Throws)
        let result = try partial(1)(2)

        XCTAssertEqual(expectedResult, result)
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

    func testShouldCurryFunctionWithThreeParametersAndCanThrowExceptions() throws {
        let expectedResult = self.add3(1, second: 2, third: 3)

        let partial = R.curry(self.add3Throws)
        let result = try partial(1)(2)(3)

        XCTAssertEqual(expectedResult, result)
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

    func testShouldCurryFunctionWithFourParametersAndCanThrowExceptions() throws {
        let expectedResult = self.add4(1, second: 2, third: 3, fourth: 4)

        let partial = R.curry(self.add4Throws)
        let result = try partial(1)(2)(3)(4)

        XCTAssertEqual(expectedResult, result)
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

    func testShouldCurryFunctionWithFiveParametersAndCanThrowExceptions() throws {
        let expectedResult = self.add5(1, second: 2, third: 3, fourth: 4, fifth: 5)

        let partial = R.curry(self.add5Throws)
        let result = try partial(1)(2)(3)(4)(5)

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
