//
//  IndexOfTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/21.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IndexOfTests: XCTestCase {

    func testShouldReturnIndexOfTheArrayElement() {
        let expectedResult = 2

        let result = R.indexOf(5)(in: [1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnIndexOfTheFirstArrayElement() {
        let expectedResult = 3

        let result = R.indexOf(7)([1, 3, 5, 7, 9, 7, 5, 3, 1])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNilWhenElementCannotBeFoundInArray() {
        let result = R.indexOf(11)([1, 3, 5, 7, 9])

        XCTAssertNil(result)
    }

}
