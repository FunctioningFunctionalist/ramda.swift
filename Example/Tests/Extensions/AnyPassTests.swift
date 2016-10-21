//
//  AnyPassTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/10/04.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AnyPassTests: XCTestCase {

    func testShouldReturnTrueWhenLessThanTenButNotGreaterThanFive() {
        let predicates = [ { $0 < 10 }, { $0 > 5 }]

        let result = R.anyPass(predicates)(3)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenMoreThanTenAndMoreThanFive() {
        let predicates = [ { $0 < 10 }, { $0 < 5 }]

        let result = R.anyPass(predicates)(12)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfTwoNumbersAreLessThanTenButNotSmallerThanFive() {
        let predicates = [ { R.sum([$0, $1]) < 10 }, { R.sum([$0, $1]) < 5 }]

        let result = R.anyPass(predicates)(5)(3)

        XCTAssertTrue(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfThreeNumbersAreLessThanTenButNotSmallerThanFive() {
        let predicates = [ { R.sum([$0, $1, $2]) < 10 }, { R.sum([$0, $1, $2]) < 5 }]

        let result = R.anyPass(predicates)(5)(3)(0)

        XCTAssertTrue(result)
    }

    func testShouldReturnTrueWhenWhenTheSumOfFourNumbersAreLessThanTenButNotSmallerThanFive() {
        let predicates = [ { R.sum([$0, $1, $2, $3]) < 10 }, { R.sum([$0, $1, $2, $3]) > 5 }]

        let result = R.anyPass(predicates)(5)(3)(0)(1)

        XCTAssertTrue(result)
    }

}
