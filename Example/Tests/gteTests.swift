import Foundation
import XCTest
import Ramda

class GteTests: XCTestCase {

    func testGteNumber() {
        XCTAssertEqual(R.gte(1, 9), false)
        XCTAssertEqual(R.gte(2, 1), true)
        XCTAssertEqual(R.gte(2, 2), true)
        XCTAssertEqual(R.gte(2, 3), false)
    }

    func testGteString() {
        XCTAssertEqual(R.gt("a", "z"), false)
        XCTAssertEqual(R.gt("z", "a"), true)
    }

}
