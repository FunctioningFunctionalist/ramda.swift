import Foundation
import XCTest
import Ramda

class TestTests: XCTestCase {

    func testRegexMatch() {
        let result = R.test("\\w", "Ramda for Swift")
        XCTAssertEqual(result, true)
    }

    func testRegexNoMatch() {
        let result = R.test("[0-9]", "Ramda for Swift")
        XCTAssertEqual(result, false)
    }

    func testRegexCurried() {
        let matchNumbers = R.test("[0-9]")
        let result = matchNumbers("Ramda for Swift")
        XCTAssertEqual(result, false)
    }

}
