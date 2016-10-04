//
//  IsEmptyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/17.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IsEmptyTests: XCTestCase {

    func testShouldReturnTrueWhenArrayIsEmpty() {
        let input: [Int] = []

        let result = R.isEmpty(input)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenArrayIsNotEmpty() {
        let result = R.isEmpty([1, 2, 3])

        XCTAssertFalse(result)
    }

    func testShouldTrueWhenStringIsEmpty() {
        let result = R.isEmpty("".characters)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenStringIsNotEmpty() {
        let result = R.isEmpty("Example".characters)

        XCTAssertFalse(result)
    }

}
