//
//  ToStringTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/18.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ToStringTests: XCTestCase {

    func testShouldReturnStringRepresentationOfInteger() {
        let expectedResult = "10"

        let result = R.toString(10)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnStringRepresentationOfObject() {
        let expectedResult = "TestObject"

        let result = R.toString(TestObject())

        XCTAssertEqual(expectedResult, result)
    }

    struct TestObject: CustomStringConvertible {

        var description: String {

            get {

                return "TestObject"

            }

        }

    }

}
