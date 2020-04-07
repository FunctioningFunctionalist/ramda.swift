import Foundation
import XCTest
import Ramda

class DropLastTests: XCTestCase {

    func testDropLastString() {
        let result = R.dropLast(3, "ramda")
        XCTAssertEqual(result, "ra")
    }

    func testDropLastString_BeyondRange() {
        let result = R.dropLast(1000, "ramda")
        XCTAssertEqual(result, "")
    }

    func testDropLastArrayString_First() {
        let result = R.dropLast(1, ["foo", "bar", "baz"])
        XCTAssertEqual(result, ["foo", "bar"])
    }

    func testDropLastArrayFirstString_FirstAndSecond() {
        let result = R.dropLast(2, ["foo", "bar", "baz"])
        XCTAssertEqual(result, ["foo"])
    }

    func testDropLastArrayFirstString_All() {
        let result = R.dropLast(3, ["foo", "bar", "baz"])
        XCTAssertEqual(result, [])
    }

    func testDropLastArray_OtherType() {
        let result = R.dropLast(2, [1, 2, 3])
        XCTAssertEqual(result, [1])
    }

    func testDropLastArray_OtherType_All() {
        let result = R.dropLast(3, [1, 2, 3])
        XCTAssertEqual(result, [])
    }

    func testDropLastArray_OtherType2() {
        let result = R.dropLast(2, [1.1, 2.2, 3.3])
        XCTAssertEqual(result, [1.1])
    }

    func testDropLastArray_OtherType2_All() {
        let result = R.dropLast(3, [1.1, 2.2, 3.3])
        XCTAssertEqual(result, [])
    }

}
