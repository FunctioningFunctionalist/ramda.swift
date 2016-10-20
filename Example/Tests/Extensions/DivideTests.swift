//
//  DivideTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DivideTests: XCTestCase {

    func testShouldDivideIntegersTogether() {
        let newLhs = 1
        let newRhs = 2
        let result = R.divide(newLhs)(newRhs)

        XCTAssertTrue(result == (newLhs / newRhs))
    }

    func testShouldDivideFloatsTogether() {
        let newLhs: Float = 1.1
        let newRhs: Float = 2.2
        let result = R.divide(newLhs)(newRhs)

        XCTAssertTrue(result == (newLhs / newRhs))
    }

    func testShouldDivideDoublesTogether() {
        let newLhs: Double = 1.1
        let newRhs: Double = 0.2
        let result = R.divide(newLhs)(newRhs)

        XCTAssertTrue(result == (newLhs / newRhs))
    }

}
