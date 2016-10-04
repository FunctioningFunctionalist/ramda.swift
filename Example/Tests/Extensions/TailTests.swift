//
//  TailTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class TailTests: XCTestCase {

    func testShouldReturnArrayWithoutFirstElement() {
        let expectedResult = [2, 3]

        let result = R.tail([1, 2, 3])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnStringWithoutFirstCharacter() {
        let expectedResult = "xample"

        let result = R.tail("Example".characters)

        XCTAssertEqual(expectedResult, String(result))
    }

}
