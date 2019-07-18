//
//  PickTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

struct TestObject {
    let one = "One"
    let two = 2
    let three = 3.0
    let four = "Four"
}

class PickTests: XCTestCase {

    func testPick2() {
        let result = R.pick((\TestObject.one, \TestObject.two))(TestObject())
        XCTAssertEqual(result.0, "One")
        XCTAssertEqual(result.1, 2)
    }

    func testPick3() {
        let result = R.pick((\TestObject.one, \TestObject.two, \TestObject.three))(TestObject())
        XCTAssertEqual(result.0, "One")
        XCTAssertEqual(result.1, 2)
        XCTAssertEqual(result.2, 3.0)
    }

    func testPick4() {
        let result = R.pick((\TestObject.four, \TestObject.one, \TestObject.two, \TestObject.three))(TestObject())
        XCTAssertEqual(result.0, "Four")
        XCTAssertEqual(result.1, "One")
        XCTAssertEqual(result.2, 2)
        XCTAssertEqual(result.3, 3.0)
    }

}
