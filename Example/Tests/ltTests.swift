import Foundation
import XCTest
import Ramda

class LtTests: XCTestCase {

    func testLteNumber() {
        XCTAssertEqual(R.lt(2, 1), false)
        XCTAssertEqual(R.lt(2, 2), false)
        XCTAssertEqual(R.lt(2, 3), true)
    }

    func testLteString() {
        XCTAssertEqual(R.lt("a", "z"), true)
        XCTAssertEqual(R.lt("z", "a"), false)
    }

    func testLtAsFunction() {
        let lessThanNumber = R.lt(100)

        XCTAssertEqual(lessThanNumber(200), false)
        XCTAssertEqual(lessThanNumber(100), false)
    }

}
