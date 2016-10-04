//
//  ModuloTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/15.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ModuloTests: XCTestCase {

    func testShouldModuloIntegersTogether() {
        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) {
            (lhs: Int, rhs: Int) in

            let newLhs = lhs == 0 ? lhs + 1 : lhs
            let newRhs = rhs == 0 ? rhs + 1 : rhs
            let result = R.modulo(newLhs)(by: newRhs)

            return result == (newLhs % newRhs)
        }

        FoxTester.assert(integerGenerator)
    }

    func testShouldModuloFloatsTogether() {
        let floatsGenerator = FoxGeneratorParam2(FOXFloat(), FOXFloat()) {
            (lhs: Float, rhs: Float) in

            let newLhs = lhs == 0 ? lhs + 1 : lhs
            let newRhs = rhs == 0 ? rhs + 1 : rhs
            let result = R.modulo(newLhs)(by: newRhs)

            return result == (newLhs % newRhs)
        }

        FoxTester.assert(floatsGenerator)
    }

    func testShouldModuloDoublesTogether() {
        let doubleGenerator = FoxGeneratorParam2(FOXDouble(), FOXDouble()) {
            (lhs: Double, rhs: Double) in

            let newLhs = lhs == 0 ? lhs + 1 : lhs
            let newRhs = rhs == 0 ? rhs + 1 : rhs
            let result = R.modulo(newLhs)(by: newRhs)

            return result == (newLhs % newRhs)
        }

        FoxTester.assert(doubleGenerator)
    }

}
