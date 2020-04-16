import Foundation
import XCTest
import Ramda

class MatchTests: XCTestCase {

    func testMatchEmail() {
        let actual = R.match("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$", "ramda@swift.com")
        XCTAssertEqual(actual, ["ramda@swift.com"])
    }

    func testMatch() {
        let actual = R.match("/a/", "b")
        XCTAssertEqual(actual, [])
    }

    func testMatchCurried() {
        let emailValidator = R.match("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$")
        XCTAssertEqual(emailValidator("ramda@swift.com"), ["ramda@swift.com"])
    }

}
