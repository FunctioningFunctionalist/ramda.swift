//
//  InsertTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/22.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class InsertTests: XCTestCase {

    func testShouldInsertElementIntoArray() {
        let expectedResult = [1, 2, 3, 5]

        let result = R.insert(1)(2)(in: [1, 3, 5])

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldReturnNewCollectionWithInsertedElementAndNotAffectOriginalCollection() {
        let expectedResult = [1, 3, 5, 6, 7, 9]
        let input = [1, 3, 5, 7, 9]

        let result = R.insert(3)(6)(in: input)

        XCTAssertEqual(expectedResult, result)
        XCTAssertEqual(input, [1, 3, 5, 7, 9])
    }

}
