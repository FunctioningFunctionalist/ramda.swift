import Foundation
import XCTest
import Ramda

class HeadTests: XCTestCase {

    func testHeadString() {
        let result = R.head("abc")
        XCTAssertEqual(result, "a")
    }

    func testHeadArrayString() {
        let result = R.head(["fi", "fo", "fum"])
        XCTAssertEqual(result, "fi")
    }

    func testHeadStringEmpty() {
        let result = R.head("")
        XCTAssertEqual(result, "")
    }

    func testHeadArrayStringEmpty() {
        let result = R.head([])
        XCTAssertEqual(result, nil)
    }

}
