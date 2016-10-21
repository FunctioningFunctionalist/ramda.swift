//
//  MaxByTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MaxByTests: XCTestCase {

    func testShouldReturnLargerDoubledInteger() {
        let expectedResult = 64

        let result = R.maxBy { $0 * $0 } (7)(8)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheLargerStringFromIntegerElements() {
        let expectedResult = "9"

        let result = R.maxBy { String($0) } (1)(9)

        XCTAssertEqual(expectedResult, result)
    }

}
