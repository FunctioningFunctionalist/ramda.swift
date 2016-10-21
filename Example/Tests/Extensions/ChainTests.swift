//
//  ChainTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ChainTests: XCTestCase {

    func convert(_ string: String) -> Int {
        if let number = Int(string) {
            return number
        }

        return 0
    }

    func optionalConvert(_ string: String) -> Int? {
        return Int(string)
    }

    func testShouldChainFunctionForArrayOfValues() throws {
        let expectedResult = [2, 4, 5, 3]
        let input = ["2", "4", "5", "3"]

        let result = try R.chain(convert)(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldChainOptionalFunctionForArrayOfValues() throws {
        let expectedResult = [2, 5]
        let input = ["2", "a", "5", "k"]

        let result = try R.chain(optionalConvert)(input)

        XCTAssertEqual(expectedResult, result)
    }

}
