//
//  NthArgTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class NthArgTests: XCTestCase {

    func testShouldReturnTheSecondArgumentInTheReturnedFunction() {
        let expectedResult = 3

        let result = R.nthArg(1)(in: 1, 3, 5, 7, 9)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnTheThirdArgumentInTheReturnedFunctionEvenWhenTheIndexIsNegative() {
        let expectedResult = 5

        let result = R.nthArg(-1)(in: 1, 3, 5)

        XCTAssertEqual(expectedResult, result)
    }

}
