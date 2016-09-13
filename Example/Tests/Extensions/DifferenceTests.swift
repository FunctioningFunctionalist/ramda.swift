//
//  DifferenceTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/13.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class DifferenceTests: XCTestCase {

//R.difference([1,2,3,4], [7,6,5,4,3]); //=> [1,2]
//R.difference([7,6,5,4,3], [1,2,3,4]); //=> [7,6,5]

    func testShouldReturnDifferenceBetweenTwoArrays() {
        let expectedResult = [1, 2]

        let result = R.difference([1, 2, 3, 4])(from: [7, 6, 5, 4, 3])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDifferenceBetweenTwoArraysSwappedAround() {
        let expectedResult = [7, 6, 5]

        let result = R.difference([7, 6, 5, 4, 3])(from: [1, 2, 3, 4])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnDifferenceBetweenTwoStrings() {
//        let expectedResult = "ple"

//        let result = R.difference("Example")(from: "Exam")

//        XCTAssertEqual(expectedResult, result)
    }

}
