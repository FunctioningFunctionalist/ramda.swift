//
//  ForEachTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/21.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ForEachTests: XCTestCase {

    func testShouldIterateThroughEachElementOfArray() {
        var total = 0
        let input = [1, 2, 3, 4, 5]

        let result = R.forEach({ total += $0 })(input)

        XCTAssertEqual(input, result)
        XCTAssertEqual(15, total)
    }

    func testShouldIterateThroughEachElementOfSet() {
        var total = 0
        let input = Set(arrayLiteral: 1, 2, 3, 4, 5)

        let result = R.forEach({ total += $0 })(input)

        XCTAssertEqual(input, result)
        XCTAssertEqual(15, total)
    }

    func testShouldIterateThroughEachKeyValuePairOfDictionary() {
        var total = 0
        let input = ["Key0": 1, "Key1": 2, "Key2": 3, "Key3": 4, "Key4": 5]

        let result = R.forEach({ total += $0.1 })(input)

        XCTAssertEqual(input, result)
        XCTAssertEqual(15, total)
    }

}
