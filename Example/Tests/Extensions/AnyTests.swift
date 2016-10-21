//
//  AnyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/10.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AnyTests: XCTestCase {

    func isEven(_ number: Int) -> Bool {
        return number % 2 == 0
    }

    func testShouldReturnTrueIfAnyValueInListMatchesPredicate() {
        let values = [1, 3, 5, 6, 7]

        let result = R.any(self.isEven)(values)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseIsNoValueInListMatchesPredicate() {
        let values = [1, 3, 5, 7, 9]

        let result = R.any(self.isEven)(values)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueIfAnyValueInListMatchesPredicateUsingPartialFunctions() {
        let values = [1, 3, 5, 6, 7]

        let any: (_ in: [Int]) -> Bool = R.any(self.isEven)
        let result = any(values)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseWhenOneValueInSetDoesNotMatchThePredicate() {
        let values = Set(arrayLiteral: 1, 3, 5, 7, 9)

        let result = R.any(self.isEven, in: values)

        XCTAssertFalse(result)
    }

}
