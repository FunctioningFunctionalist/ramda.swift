//
//  MapTests.swift
//  Ramda_Example
//
//  Created by TYRONE AVNIT on 2019/03/27.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AddIndexTests: XCTestCase {

    func testAddIndex() {
        let withIndex = { (offset: Int, value: Int) in return "\(offset) - \(value)" }
        let result = R.addIndex(withIndex, [1, 2, 3])
        let expectedResult = [1, 2, 3].enumerated().map(withIndex)
        XCTAssertEqual(result, expectedResult)
    }

}
