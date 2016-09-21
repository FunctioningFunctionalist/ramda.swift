//
//  FlattenTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/21.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class FlattenTests: XCTestCase {
    
    func testShouldReturnFlattenedArray() {
        let expectedResult = [1, 3, 5, 7, 9, 11, 13]

        let result = R.flatten([[1], [3], [5], [7], [9], [11], [13]])

        XCTAssertEqual(expectedResult, Array(result))
    }

}
