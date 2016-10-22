//
//  ApertureTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/22/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ApertureTests: XCTestCase {

    func testShouldReturnANewListComposedOfTwoTuples() {
        let expectedResult = [[1, 2], [2, 3], [3, 4], [4, 5]].flatMap { $0 }
        let result = R.aperture(2)([1, 2, 3, 4, 5]).flatMap { $0 }
        XCTAssertTrue(expectedResult == result)
    }

    func testShouldReturnANewListComposedOfThreeTuples() {
        let expectedResult = [[1, 2, 3], [2, 3, 4], [3, 4, 5]].flatMap { $0 }
        let result = R.aperture(3)([1, 2, 3, 4, 5]).flatMap { $0 }
        XCTAssertTrue(expectedResult == result)
    }

    func testShouldReturnAnEmptyArrayWhenIndexGreaterThanList() {
        let expectedResult = [Array<Int>]().flatMap { $0 }
        let result = R.aperture(20)([1, 2, 3, 4, 5]).flatMap { $0 }
        XCTAssertTrue(expectedResult == result)
    }

}
