//
//  PairTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class PairTests: XCTestCase {

    func testShouldPairTwoStringsIntoAnArray() {
        let expectedResult = ["Example", "Test"]

        let result = R.pair("Example")("Test")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPairTwoIntegersIntoAnArray() {
        let expectedResult = [1, 2]

        let result = R.pair(1)(2)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPairTwoArraysIntoOneArray() {
        let expectedResult = [1, 2, 3, 4, 5, 6]

        let result: [Int] = R.pair([1, 2, 3])([4, 5, 6]).flatMap { $0 }

        XCTAssertEqual(result, expectedResult)
    }

}
