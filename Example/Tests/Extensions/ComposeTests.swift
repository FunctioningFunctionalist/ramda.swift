//
//  ComposeTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/08.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class ComposeTests: XCTestCase {

    func increment(_ number: Int) -> Int {
        return number + 1
    }

    func square(_ number: Int) -> Int {
        return number * number
    }

    func testShouldComposeTwoFunctionsTogetherAndExecuteFromLeftToRight() {
        let expectedResult = 4
        let input = 1

        let composition = R.compose(square, second: increment)
        let result = composition(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComposeTwoFunctionsTogetherAndExecuteFromLeftToRightUsingCustomOperator() {
        let expectedResult = 4
        let input = 1

        let composition = square <<< increment
        let result =  composition(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComposeTwoFunctionsTogetherAndExecuteFromRightToLeftUsingCustomOperator() {
        let expectedResult = 4
        let input = 1

        let composition = increment >>> square
        let result =  composition(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComposeThreeFunctionsTogetherAndExecuteFromLeftToRight() {
        let expectedResult = 16
        let input = 1

        let composition = R.compose(square, second: square, third: increment)
        let result = composition(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComposeMoreThanThreeFunctionsTogetherAndExecuteFromLeftToRightUsingCustomOperator() {
        let expectedResult = 18
        let input = 1

        let composition = increment <<< increment <<< square <<< square <<< increment
        let result = composition(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComposeMoreThanThreeFunctionsTogetherAndExecuteFromRightToLeftUsingCustomOperator() {
        let expectedResult = 18
        let input = 1

        let composition = increment >>> square >>> square >>> increment >>> increment
        let result = composition(input)

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
