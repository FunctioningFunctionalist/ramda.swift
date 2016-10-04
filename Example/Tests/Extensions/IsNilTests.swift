//
//  IsNilTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/17.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IsNilTests: XCTestCase {

    func testShouldReturnTrueWhenValueIsNil() {
        let input: String? = nil

        let result = R.isNil(input)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenValueIsNotNil() {
        let input: String? = "Example"

        let result = R.isNil(input)

        XCTAssertFalse(result)
    }

}
