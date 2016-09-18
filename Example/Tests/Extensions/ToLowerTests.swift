//
//  ToLowerTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ToLowerTests: XCTestCase {

    func testShouldLowerCaseString() {
        let expectedResult = "example"

        let result = R.toLower("EXAMPLE")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldLowerCaseStrings() {
        let stringGenerator = FoxGeneratorParam1(FOXString()) { (string: String) in
            let expectedResult = string.lowercaseString

            let result = R.toLower(string)

            return expectedResult == result
        }

        FoxTester.assert(stringGenerator)
    }

}
