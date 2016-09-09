//
//  ApTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/09.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

// swiftlint:disable line_length

class ApTests: XCTestCase {

    func testShouldApplyArrayOfFunctionsToArrayOfValues() {
        let arrayGenerator = FoxGeneratorParam1(FOXArray(FOXInteger())) { (numbers: [Int]) in
            let functions: [Int -> Int] = [R.add(10), R.add(25)]
            let expectedResult = self.createResultFromFunctions(functions, with: numbers)

            let actualResult = R.ap(functions, array: numbers)

            return expectedResult == actualResult
        }

        FoxTester.assert(arrayGenerator)
    }

    func testShouldApplyArraysOfFunctionsToArrayOfValuesUsingPartialFunctions() {
        let partialGenerator = FoxGeneratorParam1(FOXArray(FOXInteger())) { (functionValues: [Int]) in
            let functions: [Int -> Int] = functionValues.map { (num: Int) in R.add(num) }
            let partial = R.ap(functions)
            let arrayGenerator = FoxGeneratorParam1(FOXArray(FOXInteger())) { (numbers: [Int]) in
                let expectedResult = self.createResultFromFunctions(functions, with: numbers)

                let actualResult = partial(array: numbers)

                return expectedResult == actualResult
            }

            return FoxTester.assert(arrayGenerator)
        }

        FoxTester.assert(partialGenerator)
    }

    func testShouldAllowFunctionsToBePassedAsVarargs() {
        let expectedResult = [11, 12, 13, 26, 27, 28]
        let values = [1, 2, 3]
        let result = R.ap(R.add(10), R.add(25))(array: values)

        XCTAssertEqual(expectedResult, result)
    }

    func createResultFromFunctions(functions: [Int -> Int], with numbers: [Int]) -> [Int] {
        var result: [Int] = []
        for function in functions {
            for number in numbers {
                result.append(function(number))
            }
        }
        return result
    }

}

// swiftlint:enable line_length
