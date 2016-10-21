//
//  NoneTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/16.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class NoneTests: XCTestCase {

    func isEven(_ number: Int) -> Bool {
        return number % 2 == 0
    }

   func testShouldReturnTrueWhenAllElementsAreNotEven() {
       let result = R.none(isEven)([1, 3, 5, 7, 9])

       XCTAssertTrue(result)
   }

    func testShouldReturnFalseWhenAnyElementIsEven() {
        let result = R.none(isEven)([1, 2, 3, 5, 7, 7])

        XCTAssertFalse(result)
    }

    func testShouldReturnFalseWhenAllElementsAreEven() {
        let result = R.none(isEven)([2, 4, 6, 8, 10])

        XCTAssertFalse(result)
    }

}
