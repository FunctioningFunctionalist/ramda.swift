//
//  DefaultToTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class DefaultToTests: XCTestCase {

    func testShouldReturnValueWhenValueIsNotNil() {
        let expectedResult = "Test"
        let input: String? = "Test"

        let result = R.defaultTo("Default", value: input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDefaultValueWhenValueIsNil() {
        let expectedResult = "Default"
        let input: String? = nil

        let result = R.defaultTo("Default", value: input)

        XCTAssertEqual(expectedResult, result)
    }

}
