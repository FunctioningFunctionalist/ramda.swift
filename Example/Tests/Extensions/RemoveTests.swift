//
//  RemoveTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class RemoveTests: XCTestCase {

    func testShouldRemoveThreeElementsFromArray() {
        let expectedResult = [1, 2, 6, 7, 8]

        let result = R.remove(2)(for: 3)(in: [1, 2, 3, 4, 5, 6, 7, 8])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldRemoveFirstFourElementsFromArray() {
        let expectedResult = [5, 6, 7, 8]

        let result = R.remove(0)(for: 4)(in: [1, 2, 3, 4, 5, 6, 7, 8])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldRemoveLastFiveElementsFromArray() {
        let expectedResult = [1, 2, 3]

        let result = R.remove(3)(for: 5)(in: [1, 2, 3, 4, 5, 6, 7, 8])

        XCTAssertEqual(expectedResult, result)
    }

}
