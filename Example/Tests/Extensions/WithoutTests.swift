//
//  WithoutTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/24.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class WithoutTests: XCTestCase {

    func testShouldReturnArrayWithoutElementsFromFirstArray() {
        let expectedResult = [1, 2, 1]

        let result = R.without([3, 4])(from: [1, 2, 1, 3, 4])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnArrayWithElementsNotContainedInFirstArray() {
        let expectedResult = [3, 4]

        let result = R.without([1, 2])(from: [1, 2, 1, 3, 4])

        XCTAssertEqual(expectedResult, result)
    }

}
