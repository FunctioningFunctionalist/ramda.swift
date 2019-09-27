import Foundation
import XCTest
import Ramda

class DropTests: XCTestCase {

    func testDropString() {
        let result = R.drop(3, "ramda")
        XCTAssertEqual(result, "da")
    }

    func testDropString_Beyond() {
        let result = R.drop(20, "ramda")
        XCTAssertEqual(result, "")
    }

    func testDropArrayString_First() {
        let result = R.drop(1, ["foo", "bar", "baz"])
        XCTAssertEqual(result, ["bar", "baz"])
    }

    func testDropArrayFirstString_FirstAndSecond() {
        let result = R.drop(2, ["foo", "bar", "baz"])
        XCTAssertEqual(result, ["baz"])
    }

    func testDropArrayFirstString_All() {
        let result = R.drop(3, ["foo", "bar", "baz"])
        XCTAssertEqual(result, [])
    }

}
