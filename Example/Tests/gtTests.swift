import Foundation
import XCTest
import Ramda

class GtTests: XCTestCase {

    func testGtNumber() {
        XCTAssertEqual(R.gt(1, 9), false)
        XCTAssertEqual(R.gt(2, 1), true)
        XCTAssertEqual(R.gt(2, 2), false)
        XCTAssertEqual(R.gt(2, 3), false)
    }

    func testGtString() {
        XCTAssertEqual(R.gt("a", "z"), false)
        XCTAssertEqual(R.gt("z", "a"), true)
    }

    func testGtAsFunction() {
        let greaterThanNumber = R.gt(100)

        XCTAssertEqual(greaterThanNumber(10), false)
        XCTAssertEqual(greaterThanNumber(100), false)
    }

}
