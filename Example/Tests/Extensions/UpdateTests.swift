//
//  UpdateTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class UpdateTests: XCTestCase {

    func testShouldUpdateFirstIndexOfArrayWithNewValue() {
        let expectedResult = [23, 5, 6, 2]

        let result = R.update(0)(23)([1, 5, 6, 2])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldUpdateIndexOfArrayWithNewValue() {
        let expectedResult = [1, 5, 26, 2]

        let result = R.update(2)(26)([1, 5, 6, 2])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldDoNothingWhenTryingToUpdateArrayWithNewValueWhenIndexIsOutOfBounds() {
        let expectedResult = [1, 5, 6, 2]

        let result = R.update(20)(23)([1, 5, 6, 2])

        XCTAssertEqual(expectedResult, result)
    }

}
