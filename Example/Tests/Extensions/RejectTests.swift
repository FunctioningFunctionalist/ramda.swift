//
//  RejectTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/23.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class RejectTests: XCTestCase {

    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }

    func isTruly(keyValue: (String, Bool)) -> Bool {
        return keyValue.1
    }

    func testShouldReturnRejectedArrayFromArray() {
        let expectedResult = [1, 3, 5, 7, 9]

        let result = R.reject(isEven)(in: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnRejectedArrayFromDictionary() {
        let expectedResult = [("Key1", false)]

        let result = R.reject(isTruly)(in: ["Key0": true, "Key1": false, "Key3": true])

        XCTAssertEqual(expectedResult[0].0, result[0].0)
    }

}
