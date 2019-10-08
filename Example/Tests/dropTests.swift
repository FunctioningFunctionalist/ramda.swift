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

    func testDropArray_OtherType() {
        let result = R.drop(2, [1, 2, 3])
        XCTAssertEqual(result, [3])
    }

    func testDropArray_OtherType_All() {
        let result = R.drop(3, [1, 2, 3])
        XCTAssertEqual(result, [])
    }

    func testDropArray_OtherType2() {
        let result = R.drop(2, [1.1, 2.2, 3.3])
        XCTAssertEqual(result, [3.3])
    }

    func testDropArray_OtherType2_All() {
        let result = R.drop(3, [1.1, 2.2, 3.3])
        XCTAssertEqual(result, [])
    }

}
