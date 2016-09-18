//
//  ToUpperTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ToUpperTests: XCTestCase {

    func testShouldUpperCaseString() {
        let expectedResult = "EXAMPLE"

        let result = R.toUpper("example")

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldUpperCaseStrings() {
        let stringGenerator = FoxGeneratorParam1(FOXString()) { (string: String) in
            let expectedResult = string.uppercaseString

            let result = R.toUpper(string)

            return expectedResult == result
        }

        FoxTester.assert(stringGenerator)
    }

}
