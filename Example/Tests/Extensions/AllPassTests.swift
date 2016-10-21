//
//  AllPassTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AllPassTests: XCTestCase {

    func testShouldReturnTrueWhenLessThanTenAndGreaterThanFive() {
        let predicates = [ { $0 < 10 }, { $0 > 5 }]

        let result = R.allPass(predicates)(6)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenLessThanTenOrGreaterThanFive() {
        let predicates = [ { $0 < 10 }, { $0 > 5 }]

        let result = R.allPass(predicates)(3)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfTwoNumbersAreLessThanTenAndGreaterThanFive() {
        let predicates = [ { R.sum([$0, $1]) < 10 }, { R.sum([$0, $1]) > 5 }]

        let result = R.allPass(predicates)(5)(3)

        XCTAssertTrue(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfThreeNumbersAreLessThanTenAndGreaterThanFive() {
        let predicates = [ { R.sum([$0, $1, $2]) < 10 }, { R.sum([$0, $1, $2]) > 5 }]

        let result = R.allPass(predicates)(5)(3)(0)

        XCTAssertTrue(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfFourNumbersAreLessThanTenAndGreaterThanFive() {
        let predicates = [ { R.sum([$0, $1, $2, $3]) < 10 }, { R.sum([$0, $1, $2, $3]) > 5 }]

        let result = R.allPass(predicates)(5)(3)(0)(1)

        XCTAssertTrue(result)
    }

}
