//
//  DecTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class DecTests: XCTestCase {

    func testShouldDecrementIntegers() {
        let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (number: Int) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldDecrementFloats() {
        let floatGenerator = FoxGeneratorParam1(FOXFloat()) { (number: Float) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(floatGenerator)
    }

    func testShouldDecrementDoubles() {
        let doubleGenerator = FoxGeneratorParam1(FOXDouble()) { (number: Double) in
            let expectedResult = number - 1

            let result = R.dec(number)

            return expectedResult == result
        }

        FoxTester.assert(doubleGenerator)
    }

}
