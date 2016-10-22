//
//  ReduceWhileTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/16/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class ReduceWhileTests: XCTestCase {

    func isOdd(_ acc: Int, element: Int) -> Bool {
        return element % 2 == 1
    }

    func testShouldOnlyReduceWhileThePredicatePasses() {
        let expectedResult = 9

        let result = R.reduceWhile(isOdd)(+)(0)([1, 3, 5, 60, 777, 800])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnResultsWhenPredicateIsTrue() {
        let expectedResult = 22

        let result = R.reduceWhile(isOdd)(+)(0)([1, 3, 7, 11])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheInitialValueIfTheFirstValueDoesNotPassThePredicateTest() {
        let expectedResult = 111

        let result = R.reduceWhile(isOdd)(+)(111)([2, 4, 6])

        XCTAssertEqual(expectedResult, result)
    }

}

// swiftlint:enable line_length
