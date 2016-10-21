//
//  SortTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class SortTests: XCTestCase {

    func testShouldReturnSortedArrayInAscendingOrderUsingIntegerComparator() {
        let expectedResult = [1, 3, 5, 7]

        let result = R.sort { $0 - $1 } ([3, 5, 1, 7])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnSortedArrayInAscendingOrderUsingBooleanComparator() {
        let expectedResult = [1, 3, 5, 7]

        let result = R.sort(R.lt)([3, 5, 1, 7])

        XCTAssertEqual(expectedResult, result)
    }

}
