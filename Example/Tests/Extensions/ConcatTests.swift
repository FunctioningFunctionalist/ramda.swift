//
//  ConcatTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class ConcatTests: XCTestCase {

    func testShouldConcatenateStringsTogether() {

        let stringGenerator = FoxGeneratorParam2(FOXString(), FOXString()) {

            (lhs: String, rhs: String) in

            let result = R.concat(lhs, rhs: rhs)

            return result == (lhs + rhs)

        }

        FoxTester.assert(stringGenerator)

    }

    func testShouldConcatenateStringsTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXString()) {

            (lhs: String) in

            let partial = R.concat(lhs)

            let stringGenerator = FoxGeneratorParam1(FOXString()) {

                (rhs: String) in

                let result = partial(rhs: rhs)

                return result == (lhs + rhs)

            }

            return FoxTester.assert(stringGenerator)
        }

        FoxTester.assert(partialGenerator)

    }

    func testShouldConcatenateArraysTogether() {

        let arrayGenerator = FoxGeneratorParam2(FOXArray(FOXInteger()), FOXArray(FOXInteger())) {

            (lhs: [Int], rhs: [Int]) in

            let result = R.concat(lhs, rhs: rhs)

            return result == (lhs + rhs)

        }

        FoxTester.assert(arrayGenerator)

    }

    func testShouldConcatenateArraysTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXArray(FOXInteger())) {

            (lhs: [Int]) in

            let partial = R.concat(lhs)

            let arrayGenerator = FoxGeneratorParam1(FOXArray(FOXInteger())) {

                (rhs: [Int]) in

                let result = partial(rhs: rhs)

                return result == (lhs + rhs)

            }

            return FoxTester.assert(arrayGenerator)
        }

        FoxTester.assert(partialGenerator)

    }

}
