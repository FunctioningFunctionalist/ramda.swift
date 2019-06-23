//
//  R.Tests.swift
//  Ramda_Example
//
//  Created by TYRONE AVNIT on 2019/03/31.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

class Tests: XCTestCase {

    func testAdd() {
        let lhs = 1
        let rhs = 2
        let result = R.add(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

    func testMap() {
        let add1 = R.map(R.add(1))
        let result = add1([1, 2, 3])
        let expectedResult = [2, 3, 4]
        XCTAssertEqual(result, expectedResult)
    }

    func testAddIndex() {
        let withIndex = { (offset: Int, value: Int) in return "\(offset) - \(value)" }
        let result = R.addIndex(withIndex, [1, 2, 3])
        let expectedResult = [1, 2, 3].enumerated().map(withIndex)
        XCTAssertEqual(result, expectedResult)
    }

    func testAdjust() {
        let add1 = R.add(1)
        let result = R.adjust(add1, 2, [1, 2, 3])
        let expectedResult = [1, 2, 4]
        XCTAssertEqual(result, expectedResult)
    }

    func testAdjustWithInvalidIndex() {
        let add1 = R.add(1)
        let result = R.adjust(add1, 3, [1, 2, 3])
        let expectedResult = [1, 2, 3]
        XCTAssertEqual(result, expectedResult)
    }

    func testAllReturnsTrue() {
        let fn = R.equals(3)
        let result = R.all(fn)
        XCTAssertTrue(result([3, 3, 3]))
    }

    func testAllReturnsFalse() {
        let fn = R.equals(3)
        let result = R.all(fn)
        XCTAssertFalse(result([3, 4, 3]))
    }

    func testAllPassReturnsTrue() {
        struct Card {
            let rank: String
            let suit: String
        }
        let isQueen: (Card) -> Bool = R.propEq(("rank", "Q"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♠︎"))
        let isQueenOfSpades = R.allPass([isQueen, isSpade])
        XCTAssertTrue(isQueenOfSpades(Card(rank: "Q", suit: "♠︎")))
    }

    func testAllPassReturnsFalse() {
        struct Card {
            let rank: String
            let suit: String
        }
        let isQueen: (Card) -> Bool = R.propEq(("rank", "Q"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♠︎"))
        let isQueenOfSpades = R.allPass([isQueen, isSpade])
        XCTAssertFalse(isQueenOfSpades(Card(rank: "K", suit: "♠︎")))
    }

    func testIdentity() {
        let result = R.identity("unchanged")
        XCTAssertEqual(result, "unchanged")
    }

    func testRange() {
        let lhs = 1
        let rhs = 5
        let result = R.range(lhs)(rhs)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }

    func testTimes() {
        let result = R.times(R.add(10))(3)
        XCTAssertEqual(result, [10, 11, 12])

    }

    func testAlways() {
        let resultFunc = R.always("unchanged")
        XCTAssertEqual(resultFunc(), "unchanged")
    }

    func testRepeat() {
        let result = R.repeat("unchanged")(3)
        XCTAssertEqual(result, ["unchanged", "unchanged", "unchanged"])
    }


}
