//
//  DifferenceTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/13.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DifferenceTests: XCTestCase {

    func testShouldReturnDifferenceBetweenTwoArrays() {
        let expectedResult = [1, 2]

        let result = R.difference([1, 2, 3, 4])([7, 6, 5, 4, 3])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDifferenceBetweenTwoArraysSwappedAround() {
        let expectedResult = [7, 6, 5]

        let result = R.difference([7, 6, 5, 4, 3])([1, 2, 3, 4])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDifferenceBetweenTwoSets() {
        let set1 = Set(arrayLiteral: 1, 2, 3, 4)
        let set2 = Set(arrayLiteral: 7, 6, 5, 4, 3)

        let result = R.difference(set1, from: set2)

        let match1 = R.contains(1, in: result)
        let match2 = R.contains(2, in: result)
        XCTAssertTrue(match1)
        XCTAssertTrue(match2)
    }

    func testShouldReturnDifferenceBetweenTwoStrings() {
        let expectedResult: [Character] = ["i", "n", "g"]

        let result = R.difference("String".characters, from: "Str".characters)

        XCTAssertEqual(expectedResult, result)
    }

}
