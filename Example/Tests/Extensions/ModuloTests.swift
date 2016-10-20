//
//  ModuloTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ModuloTests: XCTestCase {

    func testShouldModuloIntegersTogether() {
        let lhs = 1
        let rhs = 2
        let result = R.modulo(lhs)(rhs)

        XCTAssertTrue(result == (lhs % rhs))
    }

    func testShouldModuloFloatsTogether() {
        let lhs: Float = 1
        let rhs: Float = 2
        let result = R.modulo(lhs)(rhs)

        XCTAssertTrue(result == lhs.truncatingRemainder(dividingBy: rhs))
    }

    func testShouldModuloDoublesTogether() {
        let lhs: Double = 1
        let rhs: Double = 2
        let result = R.modulo(lhs)(rhs)

        XCTAssertTrue(result == lhs.truncatingRemainder(dividingBy: rhs))
    }

}
