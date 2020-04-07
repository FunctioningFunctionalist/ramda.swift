import Foundation
import XCTest
import Ramda

class EmptyTests: XCTestCase {

    func testArrayEmpty() {
        let result = R.empty(value: ["3", "2", "1"])
        XCTAssertEqual(result, [])
    }

    func testDictionaryEmpty() {
        let result = R.empty(value: ["x": 1, "y": 2])
        XCTAssertEqual(result, [:])
    }

    func testStringEmpty() {
        let result = R.empty(value: "RamdaSwiftIsAwesome")
        XCTAssertEqual(result, "")
    }

    func testSetEmpty() {
        let setOfNumbers = Set([1, 2, 3, 4])
        let result = R.empty(value: setOfNumbers)
        XCTAssertEqual(result, [])
    }

}
