//
//  IfElseTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IfElseTests: XCTestCase {

    func testShouldExecuteTrueFunctionWhenConditionIsTrue() {
        let trueFunction: [Int] -> String = { param in "Not Empty" }
        let falseFunction: [Int] -> String = { param in "Empty" }

        let result = R.ifElse(R.complement(R.isEmpty))(then: trueFunction)(else: falseFunction)

        XCTAssertEqual("Not Empty", result([1, 2, 3]))
    }

    func testShouldExecuteFalseFunctionWhenConditionIsFalse() {
        let trueFunction: [Int] -> String = { param in "Not Empty" }
        let falseFunction: [Int] -> String = { param in "Empty" }

        let result = R.ifElse(R.complement(R.isEmpty))(then: trueFunction)(else: falseFunction)

        XCTAssertEqual("Empty", result([]))
    }

}
