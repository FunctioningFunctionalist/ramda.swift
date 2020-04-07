import Foundation
import XCTest
import Ramda

class DecTests: XCTestCase {

    func testDecInt() {
        let result = R.dec(42)
        XCTAssertEqual(result, 41)
    }

    func testDecFloat() {
        let float: Float = 42.0
        let result = R.dec(float)
        XCTAssertEqual(result, 41.0)
    }

    func testDecDouble() {
        let double: Double = 42.0
        let result = R.dec(double)
        XCTAssertEqual(result, 41.0)
    }

}
