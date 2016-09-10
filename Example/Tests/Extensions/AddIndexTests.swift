//
//  addIndexTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/10.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AddIndexTests: XCTestCase {

    func testShouldAdjustTheValueAtTheSpecifiedIndex() {
        let sequence = ["a", "b", "c"]
        let expectedResult = [0, 1, 2]
        
        let result = R.addIndex(sequence).map { (index, element) in return index }
        
        XCTAssertEqual(result, expectedResult)
    }

}
