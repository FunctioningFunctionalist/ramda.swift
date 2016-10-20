//
//  ApTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

// swiftlint:disable line_length

class ApTests: XCTestCase {

    func testShouldAllowFunctionsToBePassedAsVarargs() {
        let expectedResult = [11, 12, 13, 26, 27, 28]
        let values = [1, 2, 3]
        let result = R.ap(R.add(10), to: R.add(25))(to: values)

        XCTAssertEqual(expectedResult, result)
    }

    func createResultFromFunctions(_ functions: [(Int) -> Int], with numbers: [Int]) -> [Int] {
        var result: [Int] = []
        for function in functions {
            for number in numbers {
                result.append(function(number))
            }
        }
        return result
    }

}

// swiftlint:enable line_length
