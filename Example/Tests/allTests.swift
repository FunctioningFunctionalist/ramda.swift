import Foundation
import XCTest
import Ramda

class AllTests: XCTestCase {

    func testAllReturnsTrue() {
        let fn = R.equals(3)
        let result = R.all(fn)
        XCTAssertTrue(result([3, 3, 3]))
    }

    func testAllReturnsFalse() {
        let fn = R.equals(3)
        let result = R.all(fn)
        XCTAssertFalse(result([3, 4, 3]))
    }

}
