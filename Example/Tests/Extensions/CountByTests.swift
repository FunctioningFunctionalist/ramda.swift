//
//  CountByTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/17/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class CountByTests: XCTestCase {

    func testCountTheElementsByTheirOccurences() {
        let expectedResult: [Double: Int] = [1: 3, 2: 2, 3: 1]
        let result = R.countBy(floor)(in: [1.0, 1.1, 1.2, 2.0, 3.0, 2.2])
        XCTAssertEqual(expectedResult, result)
    }

}
