//
//  ComplementTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ComplementTests: XCTestCase {

    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }

    func isEqual(first: String, second: String) -> Bool {
        return first == second
    }

    func testShouldComplementIsEvenAndReturnAllOddResults() {
        let expectedResult = !isEven(5)
        let input = 5

        let isOdd = R.complement(isEven)
        let result = isOdd(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldComplementIsEqualAndReturnAllNonEqualResults() {
        let expectedResult = !isEqual("String", second: "String3")
        let input = "String3"

        let isNotEqual = R.complement(isEqual)
        let result = isNotEqual("String", input)

        XCTAssertEqual(expectedResult, result)
    }

}
