//
//  ConcatTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ConcatTests: XCTestCase {

    func testShouldConcatenateStringsTogether() {
        let lhs = "leftside"
        let rhs = "rightside"
        let result = R.concat(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

}
