//
//  ComparatorTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/23/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ComparatorTests: XCTestCase {

    struct Person {
        let age: Int
    }

    func testShouldReturnANewListComposedOfTwoTuples() {
        let expectedResult = -1
        let teen = Person(age: 11)
        let adult = Person(age: 21)
        let predicate = { (firstElement: Int, secondElement: Int)
            in firstElement < secondElement
        }

        let result = R.comparator(predicate)(teen.age)(adult.age)

        XCTAssertTrue(expectedResult == result)
    }

}
