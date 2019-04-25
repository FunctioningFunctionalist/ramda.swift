//
//  MapTests.swift
//  Ramda_Example
//
//  Created by TYRONE AVNIT on 2019/03/27.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class MapTests: XCTestCase {

    func testMap() {
        let add1 = R.map(R.add(1))
        let result = add1([1, 2, 3])
        let expectedResult = [2, 3, 4]
        XCTAssertEqual(result, expectedResult)
    }

}
