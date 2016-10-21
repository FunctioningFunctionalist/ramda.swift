//
//  TestTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/26.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class TestTests: XCTestCase {

    func testShouldReturnTrueWhenTestingRegexAgainstStringAndDoesMatchRegex() {
        let result = R.test("^x")("xyz")

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenTestingRegexAgainstStringAndDoesNotMatchRegex() {
        let result = R.test("^y")("xyz")

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenTestingRegexAgainstStringUsingCustomOperator() {
        let result = "Example" =~ "^E.am[pq].e"

        XCTAssertTrue(result)
    }

}
