//
//  IdentityTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IdentityTests: XCTestCase {

    func testShouldReturnTrueWhenIdentityIsEqualToParameter() {
        let input = "String"

        let result = R.identity(input)

        XCTAssertEqual(input, result)
    }

    func testShouldReturnFalseWhenIdentityDoesNotPointToSameMemoryAddress() {
        var input = "String"

        var result = R.identity(input)

        withUnsafePointers(&input, &result) {
            XCTAssertNotEqual($0, $1)
        }
    }

}
