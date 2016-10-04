//
//  FindTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/26.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class FindTests: XCTestCase {

    func testShouldReturnFirstElementThatIsEven() {
        let expectedResult = 6

        let result = R.find { R.modulo($0, by: 2) == 0 } (in: [1, 3, 5, 6, 8, 10])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnFirstElementThatIsGreaterThanFive() {
        let expectedResult = 7
        let greaterThanSix = R.lt(6)

        let result = R.find(greaterThanSix)(in: [1, 3, 5, 7, 9, 11])

        XCTAssertEqual(expectedResult, result)
    }

}
