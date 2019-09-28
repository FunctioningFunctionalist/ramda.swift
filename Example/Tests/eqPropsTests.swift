import Foundation
import XCTest
import Ramda

class EqPropsTests: XCTestCase {

    func testEqualProps() {
        let result = R.eqProps("a",
                               ["a": 1, "b": 2, "c": 3, "d": 4],
                               ["a": 10, "b": 20, "c": 3, "d": 40])
        XCTAssertEqual(result, false)
    }

    func testEqualProps2() {
        let result = R.eqProps("b",
                               ["a": 1, "b": 2, "c": 3, "d": 4],
                               ["a": 10, "b": 20, "c": 3, "d": 40])
        XCTAssertEqual(result, false)
    }

    func testEqualProps3() {
        let result = R.eqProps("c",
                               ["a": 1, "b": 2, "c": 3, "d": 4],
                               ["a": 10, "b": 20, "c": 3, "d": 40])
        XCTAssertEqual(result, true)
    }

    func testEqualProps4() {
        let result = R.eqProps(1,
                               [1: 1, 2: 2, 3: 3, 4: 4],
                               [1: 10, 2: 20, 3: 3, 4: 40])
        XCTAssertEqual(result, false)
    }

}
