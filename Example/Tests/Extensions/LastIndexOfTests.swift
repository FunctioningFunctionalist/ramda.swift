//
//  LastIndexOfTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/21.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class LastIndexOfTests: XCTestCase {

    func testShouldReturnIndexOfTheArrayElement() {
        let expectedResult = 2

        let result = R.lastIndexOf(5)([1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnIndexOfTheLastArrayElement() {
        let expectedResult = 5

        let result = R.lastIndexOf(7)([1, 3, 5, 7, 9, 7, 5, 3, 1])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNilWhenElementCannotBeFoundInArray() {
        let result = R.lastIndexOf(11)([1, 3, 5, 7, 9])

        XCTAssertNil(result)
    }

}
