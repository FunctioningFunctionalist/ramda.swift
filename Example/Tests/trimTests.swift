import Foundation
import XCTest
import Ramda

class TrimTests: XCTestCase {

    func testTrimAsFunction() {
        let trim = R.trim
        let result = trim("        Ramda         ")
        XCTAssertEqual(result, "Ramda")
    }

    func testTrim() {
        let result = R.trim("        Ramda         ")
        XCTAssertEqual(result, "Ramda")
    }

}
