import Foundation
import XCTest
import Ramda

class IncTests: XCTestCase {

    func testIncInt() {
        let result = R.inc(42)
        XCTAssertEqual(result, 43)
    }

    func testIncFloat() {
        let float: Float = 42.0
        let result = R.inc(float)
        XCTAssertEqual(result, 43.0)
    }

    func testIncDouble() {
        let float: Double = 42.0
        let result = R.inc(float)
        XCTAssertEqual(result, 43.0)
    }

}
