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

        let result = R.pair("Example")(and: "Test")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPairTwoIntegersIntoAnArray() {
        let expectedResult = [1, 2]

        let result = R.pair(1)(and: 2)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPairTwoArraysIntoOneArray() {
        let expectedResult = [[1, 2, 3], [4, 5, 6]]

        let result = R.pair([1, 2, 3])(and: [4, 5, 6])

        XCTAssertEqual(expectedResult, result)
    }

}
