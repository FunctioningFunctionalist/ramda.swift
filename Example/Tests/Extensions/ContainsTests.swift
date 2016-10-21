//
//  ContainsTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ContainsTests: XCTestCase {

    func testShouldReturnTrueWhenCheckingIfElementExistsInList() {
        let input = "Here"

        let result = R.contains(input)(["This", "Is", "Not", "Here"])

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenCheckingIfElementExistsInListAndItsNotThere() {
        let input = 56

        let result = R.contains(input)([1, 5, 52, 76])

        XCTAssertFalse(result)
    }

}
