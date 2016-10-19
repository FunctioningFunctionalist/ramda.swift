//
//  ApplyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ApplyTests: XCTestCase {

    func max(_ numbers: Int...) -> Int {
        var maximum = Int.min
        for number in numbers {
            if number > maximum {
                maximum = number
            }
        }
        return maximum
    }

    func testShouldApplyListOfValuesIntoFunctionAndReturnExpectedValue() {
        let expectedResult = 100
        let values = [2, 4, 0, 53, 24, 64, 100, 4, 78]

        let result = R.apply(self.max)(with: values)

        XCTAssertEqual(expectedResult, result)
    }

}
