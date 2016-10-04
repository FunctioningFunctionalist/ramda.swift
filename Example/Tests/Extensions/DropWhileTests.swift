//
//  DropWhileTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/26.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DropWhileTests: XCTestCase {

    func testShouldReturnArraySliceWhenDroppingElementsLessThanOrEqualToTwoFromTheStart() {
        let expectedResult: ArraySlice<Int> = [3, 4, 3, 2, 1]
        let lessThanOrEqualToThree = R.gte(2)

        let result = R.dropWhile(lessThanOrEqualToThree)(in: [1, 2, 3, 4, 3, 2, 1])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArraySliceWhenDroppingElementsGreaterThanOrEqualToTwoFromTheStart() {
        let expectedResult: ArraySlice<Int> = [1, 2, 3, 4, 3, 2, 1]
        let greaterThanOrEqualToThree = R.lte(2)

        let result = R.dropWhile(greaterThanOrEqualToThree)(in: [1, 2, 3, 4, 3, 2, 1])

        XCTAssertEqual(expectedResult, result)
    }

}
