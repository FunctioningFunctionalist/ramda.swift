//
//  PluckTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

class PluckTests: XCTestCase {

    func testPluckWithKeypath() {
        let result = R.pluck(\String.count)(["hello", "hi", "hey"])
        XCTAssertEqual(result, [5, 2, 3])
    }

    func testPluckWithOffset() {
        let result = R.pluck(1)([["a", "b", "c"], ["α", "β", "γ"], ["आ", "ब", "ग"]])
        XCTAssertEqual(result, ["b", "β", "ब"])
    }
}
