//
//  AdjustTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AdjustTests: XCTestCase {

    func testShouldAdjustTheValueAtTheSpecifiedIndex() {
        let incrementByOne = { $0 + 1 }
        let index = 1
        let array = [4, 5, 6]

        let result = R.adjust(incrementByOne)(index)(array)

        XCTAssertEqual(incrementByOne(array[index]), result[index])
    }

    func testShouldNotAdjustTheValueAtTheSpecifiedIndexWhenIndexIsOutOfRange() {
        let incrementByOne = { $0 + 1 }
        let indexOutOfRange = 3
        let array = [4, 5, 6]

        let result = R.adjust(incrementByOne, at: indexOutOfRange, in: array)

        XCTAssertEqual(array, result)
    }

    func testShouldNotAdjustTheValueAtTheSpecifiedIndexWhenIndexIsLessThanZero() {
        let incrementByOne = { $0 + 1 }
        let indexOutOfRange = -1
        let array = [4, 5, 6]

        let result = R.adjust(incrementByOne, at: indexOutOfRange, in: array)

        XCTAssertEqual(array, result)
    }

}
