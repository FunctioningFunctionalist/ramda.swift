//
//  AppendTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/10.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class AppendTests: XCTestCase {

    func testShouldAppendStringToListOfStrings() {
        let expectedResult = ["This", "is", "a", "list", "of", "strings"]
        let input = "strings"
        let array = ["This", "is", "a", "list", "of"]

        let result = R.append(input)(to: array)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldAppendStringToListOfStringsUsingPartialFunctions() {
        let expectedResult = ["This", "is", "a", "list", "of", "strings"]
        let input = "strings"
        let array = ["This", "is", "a", "list", "of"]

        let partial = R.append(input)
        let result = partial(to: array)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldAppendArrayOfStringsToListOfStrings() {
        let expectedResult = ["This", "is", "a", "list", "of", "strings"]
        let input = ["list", "of", "strings"]
        let array = ["This", "is", "a"]

        let result = R.append(input)(to: array)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldAppendArrayOfStringsToListOfStringsUsingPartialFunctions() {
        let expectedResult = ["This", "is", "a", "list", "of", "strings"]
        let input = ["list", "of", "strings"]
        let array = ["This", "is", "a"]

        let partial = R.append(input)
        let result = partial(to: array)

        XCTAssertEqual(expectedResult, result)
    }

}
