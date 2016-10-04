//
//  JoinTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class JoinTests: XCTestCase {

    func testShouldReturnStringCombinedWithSeparator() {
        let expectedResult = "This is an example"

        let result = R.join(" ")(in: ["This", "is", "an", "example"])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnStringCombinedWithAnySeparator() {
        let expectedResult = "This not is not an not example"

        let result = R.join(" not ")(in: ["This", "is", "an", "example"])

        XCTAssertEqual(expectedResult, result)
    }

}
