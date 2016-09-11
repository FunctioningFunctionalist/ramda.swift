//
//  ChainTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ChainTests: XCTestCase {

    func convert(string: String) -> Int {
        if let number = Int(string) {
            return number
        }

        return 0
    }

    func optionalConvert(string: String) -> Int? {
        return Int(string)
    }

    func testShouldChainFunctionForArrayOfValues() {
        let expectedResult = [2, 4, 5, 3]
        let input = ["2", "4", "5", "3"]

        let result = R.chain(convert, for: input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldChainOptionalFunctionForArrayOfValues() {
        let expectedResult = [2, 5]
        let input = ["2", "a", "5", "k"]

        let result = R.chain(optionalConvert, for: input)

        XCTAssertEqual(expectedResult, result)
    }

}
