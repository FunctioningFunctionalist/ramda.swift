//
//  DefaultToTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

class DefaultToTests: XCTestCase {

    func testDefaultToWithValue() {
        let result = R.defaultTo(42)(420)
        XCTAssertEqual(result, 420)
    }
    
    func testDefaultToWithNil() {
        let result = R.defaultTo(42)(nil)
        XCTAssertEqual(result, 42)
    }
}
