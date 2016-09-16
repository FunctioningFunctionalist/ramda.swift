//
//  MultiplyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class MultiplyTests: XCTestCase {

    func testShouldMultiplyIntegersTogether() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) {
            (lhs: Int, rhs: Int) in

            let result = R.multiply(lhs)(by: rhs)

            return result == (lhs * rhs)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldMultiplyFloatsTogether() {
        let floatsGenerator = FoxGeneratorParam2(FOXFloat(), FOXFloat()) {
            (lhs: Float, rhs: Float) in

            let result = R.multiply(lhs)(by: rhs)

            return result == (lhs * rhs)
        }

        FoxTester.assert(floatsGenerator)
    }

    func testShouldMultiplyDoublesTogether() {
        let doubleGenerator = FoxGeneratorParam2(FOXDouble(), FOXDouble()) {
            (lhs: Double, rhs: Double) in

            let result = R.multiply(lhs)(by: rhs)

            return result == (lhs * rhs)
        }

        FoxTester.assert(doubleGenerator)
    }

}
