//
//  AddTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/06.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AddTests: XCTestCase {

    func testShouldAddIntegersTogether() {
        let lhs = 1
        let rhs = 2
        let result = R.add(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

    func testShouldAddFloatsTogether() {
        let lhs: Float = 1.0
        let rhs: Float = 2
        let result = R.add(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

    func testShouldAddDoublesTogether() {
        let lhs: Double = 1.0
        let rhs: Double = 2
        let result = R.add(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

}
