//
//  EmptyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class EmptyTests: XCTestCase {

    func testShouldReturnEmptyArray() {
        let expectedResult = []

        let result = R.empty([1, 2, 3, 4])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptySet() {
        let expectedResult: Set<Int> = Set()

        let result = R.empty(Set(arrayLiteral: 1, 2, 3, 4))

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptyDictionary() {
        let expectedResult: Dictionary<String, Int> = Dictionary()

        let result = R.empty(["Key1": 10, "Key2": 20])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnEmptyString() {
        let expectedResult = String()

        let result = R.empty("Example")

        XCTAssertEqual(expectedResult, result)
    }

}
