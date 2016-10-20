//
//  MultiplyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MultiplyTests: XCTestCase {

    func testShouldMultiplyIntegersTogether() {
        let lhs = 3
        let rhs = 4
        let result = R.multiply(lhs)(rhs)
        XCTAssertTrue(result == (lhs * rhs))
    }

    func testShouldMultiplyFloatsTogether() {
        let lhs: Float = 3
        let rhs: Float = 4.2
        let result = R.multiply(lhs)(rhs)
        XCTAssertTrue(result == (lhs * rhs))
    }

    func testShouldMultiplyDoublesTogether() {
        let lhs: Double = 3
        let rhs: Double = 4.2
        let result = R.multiply(lhs)(rhs)
        XCTAssertTrue(result == (lhs * rhs))
    }

}
