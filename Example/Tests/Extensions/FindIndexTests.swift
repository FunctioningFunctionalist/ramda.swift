//
//  FindIndexTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/11/07.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class FindIndexTests: XCTestCase {

    func testShouldFindTheFirstElementFromTheArray() {
        let expectedResult = 1

        let result = R.findIndex({ $0 % 2 == 0 })([1, 2, 3, 4, 5, 6, 7, 8])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNilWhenNoElementInArrayCanBeFound() {
        let result = R.findIndex({ $0 > 10 })([1, 2, 3, 4, 5, 6, 7, 8, 9])

        XCTAssertNil(result)
    }

    func testShouldReturnIndexOfTheFirstElementFromTheDictionary() {
        let input = ["Zero": 0, "One": 1, "Two": 2, "Three": 3, "Four": 4]
        let expectedResult = input.index(input.startIndex, offsetBy: 1)

        let result = R.findIndex({ (key, value) in key == "Two" })(input)

        XCTAssertEqual(expectedResult, result)
    }

}
