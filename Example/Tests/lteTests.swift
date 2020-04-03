import Foundation
import XCTest
import Ramda

class LteTests: XCTestCase {

    func testLteNumber() {
        XCTAssertEqual(R.lte(2, 1), false)
        XCTAssertEqual(R.lte(2, 2), true)
        XCTAssertEqual(R.lte(2, 3), true)
    }

    func testLteString() {
        XCTAssertEqual(R.lte("a", "z"), true)
        XCTAssertEqual(R.lte("z", "a"), false)
    }

    func testLteAsFunction() {
        let lessThanNumber = R.lte(100)

        XCTAssertEqual(lessThanNumber(200), true)
        XCTAssertEqual(lessThanNumber(100), true)
    }

}
