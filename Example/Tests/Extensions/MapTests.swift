//
//  MapTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MapTests: XCTestCase {

    func testShouldReturnStringVersionOfIntegerArray() {
        let expectedResult = ["1", "3", "5", "7", "9"]

        let result = R.map { String($0) } (with: [1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDoubledIntegerArray() {
        let expectedResult = [1, 9, 25, 49, 81]

        let result = R.map { $0 * $0 } (with: [1, 3, 5, 7, 9])

        XCTAssertEqual(expectedResult, result)
    }

}
