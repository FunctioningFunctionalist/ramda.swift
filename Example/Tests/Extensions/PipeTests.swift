//
//  PipeTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/10/07.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class PipeTests: XCTestCase {

    let testData = [67, 83, 4, 99, 22, 18, 21, 24, 23, 2, 86]

    let elementDescription = { (element: Int) -> String in element.description }

    func isEven(_ number: Int) -> Bool {
        return number % 2 == 0
    }

    func increment(_ number: Int) -> Int {
        return number + 1
    }

    func square(_ number: Int) -> Int {
        return number * number
    }

    func testShouldPipeTwoFunctionsTogether() {
        let expectedResult = 4
        let input = 1

        let pipe = R.pipe(increment, second: square)
        let result = pipe(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPipeTwoFunctionsTogetherWithOptionalValueAndHaveOptionalResult() {
        let expectedResult = "4"
        let element:(_ in: [Int]) -> Int? = R.find { R.modulo($0, by: 2) == 0 }

        let pipe: ([Int]) -> String = R.pipe(element, second: elementDescription)
        let result = pipe(testData)

        XCTAssertEqual(result, expectedResult)
    }

    func testShouldPipeTwoFunctionsTogetherWithOptionalValueAndReturnsNil() {
        let element:(_ in: [Int]) -> Int? = R.find { $0 < 0 }

        let pipe: ([Int]) -> String? = R.pipe(element, second: elementDescription)
        let result = pipe(testData)

        XCTAssertNil(result)
    }

    func testShouldPipeThreeFunctionsTogether() {
        let expectedResult = 16
        let input = 1

        let pipe = R.pipe(increment, second: square, third: square)
        let result = pipe(input)

        XCTAssertEqual(expectedResult, result)
    }

    func testShouldPipeThreeFunctionsTogetherWithOptionalValueAndHaveOptionalResult() {
        let element:(_ in: [Int]) -> Int? = R.find { R.modulo($0, by: 2) == 0 }

        let pipe: ([Int]) -> String = R.pipe(element, second: square, third: elementDescription)
        let result = pipe(testData)

        XCTAssertEqual(result, "16")
    }

    func testShouldPipeThreeFunctionsTogetherWithOptionalValueAndReturnsNil() {
        let element:(_ in: [Int]) -> Int? = R.find { $0 < 0 }

        let pipe: ([Int]) -> String? = R.pipe(element, second: square, third: elementDescription)
        let result = pipe(testData)

        XCTAssertNil(result)
    }

    func testPipeOperatorShouldPipeMultipleFunctions() {
        let pipe = testData
            |> R.filter(isEven)
            |> R.sort { $0 > $1 }
            |> R.map { $0.description }

        let result = pipe.joined(separator: "-")

        XCTAssertEqual(result, "86-24-22-18-4-2")
    }

    func testShouldPipeTwoFunctionsTogetherWithOptionalValueAndReturnUnwrappedValue() {
        let result = testData
            |> R.find { $0 > 0 }
            |>! { $0.description }

        XCTAssertNotNil(result)
    }

    func testShouldPipeTwoFunctionsTogetherWithOptionalValueAndReturnOptionalValue() {
        let result = testData
            |> R.find { $0 < 0 }
            |>? { $0.description }

        XCTAssertNil(result)
    }
}
