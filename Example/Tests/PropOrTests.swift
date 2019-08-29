//
//  PropOrTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

private struct TestObject {
    var value: Int?
}

class PropOrTests: XCTestCase {

    func testPropOrWithValue() {
        let result = R.propOr(\TestObject.value, 420)(TestObject(value: 42))
        XCTAssertEqual(result, 42)
    }

    func testPropOrWithNil() {
        let result = R.propOr(\TestObject.value, 420)(TestObject())
        XCTAssertEqual(result, 420)
    }
}
