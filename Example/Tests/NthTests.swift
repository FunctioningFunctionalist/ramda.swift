//
//  NthTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

class NthTests: XCTestCase {

    func testNthPositiveOffset() {
        let result = R.nth(1)(["hello", "hi", "hey"])
        XCTAssertEqual(result, "hi")
    }
    
    func testNthNegativeOffset() {
        let result = R.nth(-1)(["hello", "hi", "hey"])
        XCTAssertEqual(result, "hey")
    }
}
