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

    class Singleton {

        static var string = "String"

    }

    func testShouldReturnTrueWhenStringsAreIdentical() {
        let result = R.identical(Singleton.string, to: Singleton.string)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenStringsAreNotIdentical() {
        var string1 = "String"
        var string2 = "String"

        let result = R.identical(string1, to: string2)

        XCTAssertFalse(result)
    }

    func testShouldReturnFalseWhenArraysAreNotIdentical() {
        var array1 = []
        var array2 = []

        let result = R.identical(array1, to: array2)

        XCTAssertFalse(result)
    }

}
