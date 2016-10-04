//
//  DropLastWhileTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/25.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DropLastWhileTests: XCTestCase {

    func testShouldReturnArraySliceWhenDroppingElementsLessThanOrEqualToThreeFromTheEnd() {
        let expectedResult: ArraySlice<Int> = [1, 2, 3, 4]
        let lessThanOrEqualToThree = R.gte(3)

        let result = R.dropLastWhile(lessThanOrEqualToThree)(in: [1, 2, 3, 4, 3, 2, 1])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArraySliceWhenDroppingElementsGreaterThanOrEqualToThreeFromTheEnd() {
        let expectedResult: ArraySlice<Int> = [1, 2, 3, 4, 3, 2, 1]
        let greaterThanOrEqualToThree = R.lte(3)

        let result = R.dropLastWhile(greaterThanOrEqualToThree)(in: [1, 2, 3, 4, 3, 2, 1])

        XCTAssertEqual(expectedResult, result)
    }

}
