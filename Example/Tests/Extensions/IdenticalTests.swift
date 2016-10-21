//
//  IdenticalTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class IdenticalTests: XCTestCase {

    class Singleton {}

    func testShouldReturnTrueWhenStringsAreIdentical() {
        let firstClass = Singleton()
        let secondClass = firstClass
        let result = R.identical(firstClass, to:secondClass)

        XCTAssertTrue(result)
    }
}
